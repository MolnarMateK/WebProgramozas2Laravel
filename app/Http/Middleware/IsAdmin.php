<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class IsAdmin
{
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::check() && Auth::user()->role == 'admin') {
            return $next($request);
        }

        // Visszairányítás a főoldalra hibaüzenettel
        return redirect('/')->with('error', 'Nincs jogosultságod megtekinteni ezt az oldalt.');
    }
}