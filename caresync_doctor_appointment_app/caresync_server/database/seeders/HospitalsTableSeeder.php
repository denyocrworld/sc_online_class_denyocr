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
                'hospital_address' => 'Jln. Kamboja No. 40, Bogor Tengah, Bogor',
                'hospital_location_latitude' => rand(100, 999) / 10, 
                'hospital_location_longitude' => rand(100, 999) / 10,
                'hospital_phone_number' => '021 24828284', 
                'hospital_whatsapp_number' => '01240124124', 
                'hospital_email' => 'demo@gmail.com',
            ];
        }

        // Masukkan data ke dalam tabel hospitals
        foreach ($hospitalsData as $data) {
            Hospital::create($data);
        }
    }
}
