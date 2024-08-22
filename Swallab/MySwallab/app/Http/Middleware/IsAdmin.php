<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class IsAdmin
{
    public function handle($request, Closure $next)
    {
        if (Auth::check() && Auth::user()->is_admin) {
            Log::info('User is admin');
            return $next($request);
        }

        Log::warning('User is not admin or not authenticated');
        return redirect()->away('http://10.0.102.115/swallab/Swallab/backstage/new_oder.html');
    }
}
