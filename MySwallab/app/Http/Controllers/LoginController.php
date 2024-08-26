<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Users;
use App\Models\RestInfos;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    function login(Request $request)
    {
        // return response()->json([
        //     'account' => $request->account,
        //     'password' => Hash::make($request->password)
        // ]);
        try {
            $user = Users::where('email', $request->account)->first();
            
            if ($user && Hash::check($request->password, $user->password)) {
                $token = $user->createToken('auth_token')->plainTextToken;
                
                $user_id = RestInfos::where('user_id', $user->id)->pluck('user_id');

                $url = $user->role === 'admin' ? 'http://localhost/swallab/Swallab/backstage/new_oder.html' : 'http://localhost/swallab/Swallab/headpage/headpage.html';

                return response()->json([
                    'token' => $token, 
                    'user' => $user,
                    'user_id' => $user_id,
                    'url' => $url
                ]);
            } else {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    function register(Request $request)
    {
        // return response()->json($request->all());
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => 'required|string|min:4|confirmed',
                'role' => 'required|string|max:255',
                'avatar' => 'required|file|mimes:jpeg,png,jpg,gif|max:2048',
                'phone' => 'required|string|max:255',
            ]);
    
            $image = $request->file('avatar');
            $imagePath = $image->store('avatar', 'public');
            $avatar = 'http://localhost/MySwallab/public/storage/' . $imagePath;
    
            $user = Users::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'role' => $request->role,
                'avatar' => $avatar,
                'phone' => $request->phone
            ]);

            return response()->json(['status' => 'ok']);
        } catch (\Exception $e) {
            Log::error('Logout Error: ' . $e->getMessage());

            return response()->json(['message', $e->getMessage()]);
        }
    }
}
