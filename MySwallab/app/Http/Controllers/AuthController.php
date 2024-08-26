<?php

namespace App\Http\Controllers;

use App\Models\Members;
use Illuminate\Http\Request;
use App\Models\Users;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    public function showLoginForm(Request $request)
    {
        $redirectUrl = $request->query('redirectUrl', url('/defaultRedirect'));
        return view('auth.login', compact('redirectUrl'));
        // return view('auth.login');
        // return 'Login Page';
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);
        // Auth::attempt($credentials) 是 Laravel 的一個方便方法，用於進行用戶認證（登入）的操作。
        // 這個方法接受一個包含憑證（如 email 和 password）的數組，然後檢查這些憑證是否與資料庫中的用戶資料匹配。
        //如果匹配，則表示用戶通過了身份驗證，並且會自動登入該用戶。
        if (Auth::attempt($credentials)) {
            // $request->session()->regenerate(); 是一個常見的安全措施，
            // 特別是在用戶登入操作中，旨在防止會話固定攻擊，
            // 保護用戶的會話資料不被攻擊者利用。
            $request->session()->regenerate();

            // Auth::user() 會返回目前經過認證並且登入的用戶實例。
            // 這個實例是根據用戶的 session 或 token 驗證的。
            // 如果用戶尚未登入，Auth::user() 會返回 null。
            $user = Auth::user();

            if ($user->role == 'admin') {
                return redirect('/admin');
            } else {
                // return redirect('headpage/headpage');
                $userId = Auth::id();
                $user = Users::where('id', $userId)->select('role', 'name')->first();
                $role = $user->role;
                $name = $user->name;
                $r_id = Members::where('user_id', $userId)->select('user_id')->first();
                session([
                    'role' => $role,
                    'r_id' => $r_id->user_id,
                    'name' => $name
                ]);
                $directUrl = 'http://localhost/swallab/Swallab/headpage/headpage.html123';
                $redirectUrl = $request->input('redirectUrl') ?? $directUrl;
                // $redirectUrl = $request->redirectUrl;

                return redirect()->away($redirectUrl);
                // return redirect()->away($request->input('redirectUrl'));
            }
        }

        return back()->withErrors([
            'email' => __('auth.failed'),
        ])->onlyInput('email');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
            'role' => 'required|in:admin,member',
            'avatar' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $avatarPath = null;
        if ($request->hasFile('avatar')) {
            $avatarPath = $request->file('avatar')->store('avatars', 'public');
        }

        $user = Users::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => $request->role,
            'avatar' => $avatarPath ? 'avatars/' . basename($avatarPath) : null,
        ]);

        Auth::login($user);

        if ($user->role == 'admin') {
            return redirect('/admin');
        } else {
            // return redirect('/headpage/headpage');
            return redirect()->away('http://127.0.0.1:5503/Swallab/headpage/headpage.html');
        }
    }

    public function forgotPassword(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $status = Password::sendResetLink(
            $request->only('email')
        );

        return $status === Password::RESET_LINK_SENT
            ? back()->with('status', '密碼重設連結已送到信箱。')
            : back()->withErrors(['email' => __($status)]);
    }

    public function resetPassword(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required|string|min:8|confirmed',
        ]);

        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function ($user, $password) {
                $user->forceFill([
                    'password' => Hash::make($password)
                ])->save();

                $user->setRememberToken(Str::random(60));

                event(new PasswordReset($user));
                Auth::login($user);
            }
        );

        if ($status === Password::PASSWORD_RESET) {
            $user = Auth::user();
            if ($user->role == 'admin') {
                return redirect('/admin');
            } else {
                return redirect('/member');
            }
        } else {
            return back()->withErrors(['email' => [__($status)]]);
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/');
    }
}
