<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Gep extends Model
{
    use HasFactory;

    // 1. MEGOLDÁS: Megmondjuk a Laravelnek a tábla nevét
    // (Mivel a modell 'Gep', de a tábla 'gep', nem 'geps')
    protected $table = 'gep';

    // 2. MEGOLDÁS: Kikapcsoljuk a 'created_at' és 'updated_at' oszlopokat,
    // mivel a migrációnkban sem hoztuk létre őket.
    public $timestamps = false;

    // --- ITT OLDJUK MEG A HIBALISTA 4. PONTJÁT ---

    /**
     * Definiálja a kapcsolatot: Egy Gép-hez EGY Processzor tartozik.
     */
    public function processzor(): BelongsTo
    {
        // Alapból a Laravel a 'processzor_id'-t keresné.
        // Mi megmondjuk neki, hogy a 'processzorid'-t (ahogy a migrációban van)
        // használja külső kulcsként.
        return $this->belongsTo(Processzor::class, 'processzorid');
    }

    /**
     * Definiálja a kapcsolatot: Egy Gép-hez EGY Oprendszer tartozik.
     */
    public function oprendszer(): BelongsTo
    {
        // Ugyanaz a logika: 'oprendszer_id' helyett 'oprendszerid'-t használunk.
        return $this->belongsTo(Oprendszer::class, 'oprendszerid');
    }
}