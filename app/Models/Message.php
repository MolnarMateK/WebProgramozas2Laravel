<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    use HasFactory;

    // Táblanév rendben van ('Message' -> 'messages')
    // Timestamps is rendben van (kell)

    /**
     * Azok a mezők, amiket űrlapból tömegesen be lehet tölteni.
     */
    protected $fillable = [
        'name',
        'email',
        'message',
    ];
}