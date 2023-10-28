<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Hospital;

class HospitalsTableSeeder extends Seeder
{
    public function run()
    {
        // Data dummy rumah sakit
        $hospitalsData = [];

        for ($i = 1; $i <= 20; $i++) {
            $hospitalsData[] = [
                'hospital_name' => 'Hospital ' . $i,
                'hospital_address' => 'Address ' . $i,
                'hospital_location_latitude' => rand(100, 999) / 10, // Contoh nilai acak
                'hospital_location_longitude' => rand(100, 999) / 10, // Contoh nilai acak
            ];
        }

        // Masukkan data ke dalam tabel hospitals
        foreach ($hospitalsData as $data) {
            Hospital::create($data);
        }
    }
}
