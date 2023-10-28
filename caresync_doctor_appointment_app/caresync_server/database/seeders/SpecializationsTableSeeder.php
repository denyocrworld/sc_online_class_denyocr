<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Specialization;

class SpecializationsTableSeeder extends Seeder
{
    public function run()
    {
        // Data dummy spesialisasi
        $specializationsData = [];

        for ($i = 1; $i <= 20; $i++) {
            $specializationsData[] = [
                'specialization_name' => 'Specialization ' . $i,
            ];
        }

        // Masukkan data ke dalam tabel specializations
        Specialization::insert($specializationsData);
    }
}