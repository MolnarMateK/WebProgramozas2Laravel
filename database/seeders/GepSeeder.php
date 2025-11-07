<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class GepSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('gep')->truncate();

        $path = database_path('seeders/data/gep.txt');
        $file = File::get($path);

        $lines = preg_split('/[\r\n]+/', $file, -1, PREG_SPLIT_NO_EMPTY);
        unset($lines[0]);

        foreach ($lines as $line) {
            $data = explode("\t", trim($line));
            
            // Ez a sor fogja elkapni a hibás, pl. 10 oszlopnál kevesebbet tartalmazó sorokat
            if (count($data) < 10) continue;

            DB::table('gep')->insert([
                'gyarto' => $data[0],
                'tipus' => $data[1],
                'kijelzo' => $data[2],
                'memoria' => $data[3],
                'merevlemez' => $data[4],
                'videovezerlo' => $data[5],
                'ar' => $data[6],
                'processzorid' => $data[7],
                'oprendszerid' => $data[8],
                'db' => $data[9],
            ]);
        }
    }
}