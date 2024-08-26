<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use App\Models\RestInfos;
use App\Models\Users;

class IsAdmin
{
    public function handle($request, Closure $next)
    {
        if (Auth::check() && Auth::user()->is_admin) {
            Log::info('User is admin');
            return $next($request);
        }
        $userId = Auth::id();
        $user = Users::where('id', $userId)->select('role', 'name')->first();
        $role = $user->role;
        $name = $user->name;
        $r_id = RestInfos::where('user_id', $userId)->select('user_id')->first();
        session([
            'role' => $role, 
            'r_id' => $r_id->user_id, 
            'name' => $name
        ]);
        Log::warning('User is not admin or not authenticated');
        return redirect()->away('http://localhost/swallab/Swallab/backstage/new_oder.html');
    }
}
