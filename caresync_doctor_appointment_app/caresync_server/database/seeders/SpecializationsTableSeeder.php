<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Specialization;

class SpecializationsTableSeeder extends Seeder
{
    public function run()
    {
        // Common specializations in Indonesia
        $specializationsData = [
            ['specialization_name' => 'Penyakit Dalam'],
            ['specialization_name' => 'Kardiologi'],
            ['specialization_name' => 'Neurologi'],
            ['specialization_name' => 'Pediatri'],
            ['specialization_name' => 'Obstetri dan Ginekologi'],
            ['specialization_name' => 'Urologi'],
            ['specialization_name' => 'THT (Telinga, Hidung, Tenggorokan)'],
            ['specialization_name' => 'Oftalmologi'],
            ['specialization_name' => 'Dermatologi'],
            ['specialization_name' => 'Psikiatri'],
            ['specialization_name' => 'Anestesiologi'],
            ['specialization_name' => 'Radiologi'],
            ['specialization_name' => 'Patologi Anatomi'],
            ['specialization_name' => 'Ortopedi'],
            ['specialization_name' => 'Kedokteran Fisik dan Rehabilitasi'],
            ['specialization_name' => 'Kedokteran Forensik'],
            ['specialization_name' => 'Pulmonologi dan Kedokteran Respirasi'],
            ['specialization_name' => 'Endokrinologi'],
            ['specialization_name' => 'Hematologi dan Onkologi Medis'],
            ['specialization_name' => 'Gastroenterologi'],
        ];

        // Insert data into the specializations table
        Specialization::insert($specializationsData);
    }
}
