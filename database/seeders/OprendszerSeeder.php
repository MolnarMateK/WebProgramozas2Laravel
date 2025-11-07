<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class OprendszerSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('oprendszer')->truncate();

        $path = database_path('seeders/data/oprendszer.txt');
        $file = File::get($path);

        $lines = preg_split('/[\r\n]+/', $file, -1, PREG_SPLIT_NO_EMPTY);
        unset($lines[0]);

        foreach ($lines as $line) {
            $data = explode("\t", trim($line));

            if (isset($data[0]) && isset($data[1])) {
                DB::table('oprendszer')->insert([
                    'id' => $data[0],
                    'nev' => $data[1],
                ]);
            }
        }
    }
}