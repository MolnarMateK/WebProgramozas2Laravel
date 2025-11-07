<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware): void {
        
        // ITT REGISZTRÁLJUK AZ 'admin' ALIAS-T a webes útvonalakhoz
        $middleware->alias([
            'admin' => \App\Http\Middleware\IsAdmin::class,
        ]);
        
        // A Breeze által használt aliasok (auth, guest, stb.) itt vannak, de már automatikusak
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        //
    })->create();