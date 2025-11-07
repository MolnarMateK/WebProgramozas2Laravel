<?php

namespace App\Http\Controllers;

use App\Models\Gep; // Használjuk a Gep modellt
use Illuminate\Http\Request;
use Illuminate\View\View; // Importáljuk a View-t

class GepController extends Controller
{
    /**
     * Megjeleníti az összes gépet a kapcsolt adatokkal.
     */
    public function index(): View
    {
        // Az 'eager loading' (with) betölti a kapcsolt processzor és oprendszer
        // adatokat, elkerülve az N+1 lekérdezési problémát.
        // Itt használjuk a modellekben definiált kapcsolatokat.
        $gepek = Gep::with('processzor', 'oprendszer')
                    ->orderBy('gyarto')
                    ->orderBy('tipus')
                    ->get();

        // Átadjuk a $gepek változót az 'adatbazis' nézetnek
        return view('adatbazis', [
            'gepek' => $gepek
        ]);
    }
}