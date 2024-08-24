<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
use App\Models\Members;
use App\Models\Users;

class IsMember
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check() && Auth::user()->role == 'member') {
            return $next($request);
        }
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
        // return redirect('/headpage/headpage');
        return redirect()->away('http://127.0.0.1:5503/Swallab/headpage/headpage.html'.'123');
    }
}
