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
        Schema::create('gep', function (Blueprint $table) {
            $table->id(); // Ez lehet auto-increment
            $table->string('gyarto');
            $table->string('tipus');
            $table->string('kijelzo');
            $table->integer('memoria');
            $table->integer('merevlemez');
            $table->string('videovezerlo');
            $table->integer('ar');
            $table->integer('db');

            // MEGOLDÁS (Hibalista 4 & 5):
            // Sima integerként definiáljuk az oszlopneveket a séma  alapján.
            // NEM használunk $table->foreignId()-t.
            // Így a Seeder simán fut, és az ORM-ban majd mi adjuk meg a kapcsolatot.
            $table->integer('processzorid');
            $table->integer('oprendszerid');

            // Nincs szükség timestamps-re
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('gep');
    }
};
