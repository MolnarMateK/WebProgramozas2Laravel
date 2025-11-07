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
        Schema::create('processzor', function (Blueprint $table) {
            // Nem auto-increment, hanem a TXT-ből jövő ID lesz a kulcs 
            $table->integer('id')->primary(); 
            $table->string('gyarto');
            $table->string('tipus');
            // Nincs szükség timestamps-re
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('processzor');
    }
};