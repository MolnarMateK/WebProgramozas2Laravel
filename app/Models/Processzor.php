<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Processzor extends Model
{
    use HasFactory;

    // A modell 'Processzor', de a tábla 'processzor'
    protected $table = 'processzor';

    // Nincsenek 'created_at'/'updated_at' oszlopaink
    public $timestamps = false;
}

