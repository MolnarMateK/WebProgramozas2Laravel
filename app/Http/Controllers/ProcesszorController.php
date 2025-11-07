<?php

namespace App\Http\Controllers;

use App\Models\Processzor;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class ProcesszorController extends Controller
{
    // READ (Lista megjelenítése)
    public function index(): View
    {
        $processzorok = Processzor::orderBy('gyarto')->orderBy('tipus')->get();
        // VISSZATÉRÉS AZ ÚJ NEVŰ VIEW-VAL
        return view('processzor_index', compact('processzorok'));
    }

    // CREATE (Űrlap megjelenítése)
    public function create(): View
    {
        // VISSZATÉRÉS AZ ÚJ NEVŰ VIEW-VAL
        return view('processzor_create');
    }

    // STORE (Új rekord mentése)
    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'id' => 'required|integer|unique:processzor',
            'gyarto' => 'required|string|max:255',
            'tipus' => 'required|string|max:255',
        ]);

        $proc = new Processzor();
        $proc->id = $request->id;
        $proc->gyarto = $request->gyarto;
        $proc->tipus = $request->tipus;
        $proc->save();

        return redirect()->route('crud.index')->with('success', 'Processzor sikeresen létrehozva.');
    }

    // EDIT (Szerkesztő űrlap megjelenítése)
    public function edit(Processzor $processzor): View
    {
        // VISSZATÉRÉS AZ ÚJ NEVŰ VIEW-VAL
        return view('processzor_edit', compact('processzor'));
    }

    // UPDATE (Módosítások mentése)
    public function update(Request $request, Processzor $processzor): RedirectResponse
    {
        $request->validate([
            'gyarto' => 'required|string|max:255',
            'tipus' => 'required|string|max:255',
        ]);

        $processzor->gyarto = $request->gyarto;
        $processzor->tipus = $request->tipus;
        $processzor->save();

        return redirect()->route('crud.index')->with('success', 'Processzor sikeresen frissítve.');
    }

    // DESTROY (Törlés)
    public function destroy(Processzor $processzor): RedirectResponse
    {
        $processzor->delete();

        return redirect()->route('crud.index')->with('success', 'Processzor sikeresen törölve.');
    }
}