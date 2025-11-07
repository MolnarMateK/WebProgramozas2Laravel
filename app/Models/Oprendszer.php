<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Oprendszer extends Model
{
    use HasFactory;

    // A modell 'Oprendszer', de a tábla 'oprendszer'
    protected $table = 'oprendszer';

    // Nincsenek 'created_at'/'updated_at' oszlopaink
    public $timestamps = false;
}

