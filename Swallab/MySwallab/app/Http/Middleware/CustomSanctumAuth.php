<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Laravel\Sanctum\PersonalAccessToken;

class CustomSanctumAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        $token = $request->bearerToken();

        if ($token) {
            $personalAccessToken = PersonalAccessToken::findToken($token);

            if ($personalAccessToken && $personalAccessToken->can('access-scope')) {
                $request->setUserResolver(function () use ($personalAccessToken) {
                    return $personalAccessToken->tokenable;
                });

                return $next($request);
            }
        }

        return response()->json(['error' => 'Unauthorized'], 401);
    }
}

