<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('oprendszer', function (Blueprint $table) {
            // A TXT-ből jövő ID lesz a kulcs 
            $table->integer('id')->primary();
            $table->string('nev');
            // Nincs szükség timestamps-re
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('oprendszer');
    }
};