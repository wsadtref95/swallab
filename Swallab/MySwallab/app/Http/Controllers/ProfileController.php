<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Models\Members;
use Illuminate\View\View;

class ProfileController extends Controller
{
    public function show()
    {
        $user = Auth::user();
        $member = $user->member;


        if (!$member) {
            $member = new Members();
        }

        return view('profile.show', compact('user', 'member'));
    }

    public function edit()
    {
        $user = Auth::user();
        $member = $user->member;

        if (!$member) {
            $member = new Members();
        }
        return view('profile.edit', compact('user', 'member'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'phone' => 'nullable|string|max:20',
            'bio' => 'nullable|string|max:1000',
            'ig_link' => 'nullable|url|max:255',
            'fb_link' => 'nullable|url|max:255',
            'threads_link' => 'nullable|url|max:255',
            'avatar' => 'nullable|image|max:2048', // 限制圖片大小為2MB
        ]);

        $user = Auth::user();

        $data = $request->only(['name', 'email', 'phone', 'bio']);

        // 更新 users 表
        if ($request->hasFile('avatar')) {
            $avatarPath = $request->file('avatar')->store('avatars', 'public');
            $data['avatar'] = $avatarPath;

            if ($user->avatar) {
                Storage::disk('public')->delete($user->avatar);
            }
        }

        $user->update($data);

        // 更新 members 表
        $member = Members::firstOrNew(['user_id' => $user->id]);
        $member->bio = $request->input('bio', '');
        $member->ig_link = $request->input('instagram', '');
        $member->fb_link = $request->input('facebook', '');
        $member->threads_link = $request->input('threads', '');
        $member->save();

        return redirect()->route('profile.show')->with('success', '個人檔案更新完成!');
    }

    public function updateSocialLink(Request $request)
    {
        $request->validate([
            'platform' => 'required|string|in:instagram,facebook,threads',
            'link' => 'required|url|max:255',
        ]);

        $user = Auth::user();

        // 獲取該用戶的會員資料
        $member = Members::where('user_id', $user->id)->firstOrFail();

        // 動態地更新指定的社群連結欄位
        switch ($request->platform) {
            case 'instagram':
                $member->ig_link = $request->link;
                break;
            case 'facebook':
                $member->fb_link = $request->link;
                break;
            case 'threads':
                $member->threads_link = $request->link;
                break;
        }

        $member->save();

        return response()->json(['message' => 'Social link updated successfully.']);
    }
}