<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GepController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\DiagramController;
use App\Http\Controllers\ProcesszorController;
use App\Http\Controllers\ProfileController; // EZT ADJUK HOZZÁ A HIBA JAVÍTÁSÁHOZ

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

// --- Publikus oldalak ---
Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/adatbazis', [GepController::class, 'index'])->name('adatbazis');

// Kapcsolat űrlap
Route::get('/kapcsolat', [MessageController::class, 'create'])->name('kapcsolat');
Route::post('/kapcsolat', [MessageController::class, 'store'])->name('kapcsolat.store');

// Diagram
Route::get('/diagram', [DiagramController::class, 'index'])->name('diagram');


// --- Védett oldalak ---

// Üzenetek (csak bejelentkezett felhasználóknak)
Route::get('/uzenetek', [MessageController::class, 'index'])
    ->middleware('auth')
    ->name('uzenetek');

// CRUD (csak bejelentkezett felhasználóknak)
Route::resource('processzor', ProcesszorController::class, ['names' => 'crud'])
    ->except(['show'])
    ->middleware('auth');

// Admin (csak admin szerepkörű felhasználóknak)
Route::get('/admin', function () {
    return view('admin');
})->middleware('admin')->name('admin');


/*
|--------------------------------------------------------------------------
| Breeze / Auth és Profile Routes (Javítva)
|--------------------------------------------------------------------------
*/
// Dashboard
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

// Profile útvonalak, amiket a dashboard/navigation.blade.php feltételez
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});


require __DIR__.'/auth.php';