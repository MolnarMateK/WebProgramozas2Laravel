<?php

namespace App\Http\Controllers;

use App\Models\Gep;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Support\Facades\DB;

class DiagramController extends Controller
{
    public function index(): View
    {
        $data = Gep::select('gyarto', DB::raw('count(*) as total'))
                    ->groupBy('gyarto')
                    ->orderBy('total', 'desc')
                    ->get();

        $labels = $data->pluck('gyarto');
        $values = $data->pluck('total');

        return view('diagram', compact('labels', 'values'));
    }
}