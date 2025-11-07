<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ProcesszorSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('processzor')->truncate();

        $path = database_path('seeders/data/processzor.txt');
        $file = File::get($path);

        // Robusztusabb feldolgozás: kezeli a \n és \r\n sortöréseket,
        // és automatikusan kihagyja az üres sorokat.
        $lines = preg_split('/[\r\n]+/', $file, -1, PREG_SPLIT_NO_EMPTY);

        // A fejléc (első sor) kihagyása
        unset($lines[0]);

        foreach ($lines as $line) {
            $data = explode("\t", trim($line));

            // Biztonsági ellenőrzés, hogy a sor biztosan tartalmaz-e adatot
            if (isset($data[0]) && isset($data[1]) && isset($data[2])) {
                DB::table('processzor')->insert([
                    'id' => $data[0],
                    'gyarto' => $data[1],
                    'tipus' => $data[2],
                ]);
            }
        }
    }
}