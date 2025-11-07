<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GepController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Itt regisztráljuk az alkalmazás webes útvonalait.
|
*/

// Főoldal
Route::get('/', function () {
    return view('home');
})->name('home');

// Adatbázis menüpont (3-táblás lekérdezés)
Route::get('/adatbazis', [GepController::class, 'index'])->name('adatbazis');


/*
|--------------------------------------------------------------------------
| Breeze / Auth Routes
|--------------------------------------------------------------------------
|
| Ezek a bejelentkezés utáni, védett részek.
|
*/
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

// Ez tölti be a Breeze összes többi útvonalát (login, register, logout, stb.)
require __DIR__.'/auth.php';