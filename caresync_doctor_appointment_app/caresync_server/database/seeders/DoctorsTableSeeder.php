<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Doctor;

class DoctorsTableSeeder extends Seeder
{
    /**
     * Run the seeder.
     *
     * @return void
     */
    public function run()
    {
        // Contoh data dokter
        $doctorsData = [
            [
                'doctor_name' => 'Dr. John Doe',
                'specialization_id' => 1,
                'hospital_id' => 1,
            ],
            [
                'doctor_name' => 'Dr. Jane Smith',
                'specialization_id' => 2,
                'hospital_id' => 2,
            ],
            [
                'doctor_name' => 'Dr. Michael Johnson',
                'specialization_id' => 3,
                'hospital_id' => 1,
            ],
            [
                'doctor_name' => 'Dr. Sarah Adams',
                'specialization_id' => 1,
                'hospital_id' => 3,
            ],
            [
                'doctor_name' => 'Dr. Robert Wilson',
                'specialization_id' => 2,
                'hospital_id' => 4,
            ],
            [
                'doctor_name' => 'Dr. Emily Brown',
                'specialization_id' => 3,
                'hospital_id' => 2,
            ],
            [
                'doctor_name' => 'Dr. David Lee',
                'specialization_id' => 1,
                'hospital_id' => 1,
            ],
            [
                'doctor_name' => 'Dr. Jessica Davis',
                'specialization_id' => 2,
                'hospital_id' => 3,
            ],
            [
                'doctor_name' => 'Dr. Richard Wilson',
                'specialization_id' => 3,
                'hospital_id' => 4,
            ],
            [
                'doctor_name' => 'Dr. Lisa Taylor',
                'specialization_id' => 1,
                'hospital_id' => 2,
            ],
            [
                'doctor_name' => 'Dr. Christopher Hall',
                'specialization_id' => 2,
                'hospital_id' => 1,
            ],
            [
                'doctor_name' => 'Dr. Jennifer White',
                'specialization_id' => 3,
                'hospital_id' => 3,
            ],
            [
                'doctor_name' => 'Dr. Matthew Johnson',
                'specialization_id' => 1,
                'hospital_id' => 4,
            ],
            [
                'doctor_name' => 'Dr. Amanda Clark',
                'specialization_id' => 2,
                'hospital_id' => 2,
            ],
            [
                'doctor_name' => 'Dr. Daniel Adams',
                'specialization_id' => 3,
                'hospital_id' => 1,
            ],
            [
                'doctor_name' => 'Dr. Laura Davis',
                'specialization_id' => 1,
                'hospital_id' => 3,
            ],
            [
                'doctor_name' => 'Dr. James Smith',
                'specialization_id' => 2,
                'hospital_id' => 4,
            ],
            [
                'doctor_name' => 'Dr. Sarah Johnson',
                'specialization_id' => 3,
                'hospital_id' => 2,
            ],
            [
                'doctor_name' => 'Dr. Kevin Brown',
                'specialization_id' => 1,
                'hospital_id' => 1,
            ],
            [
                'doctor_name' => 'Dr. Michelle Lee',
                'specialization_id' => 2,
                'hospital_id' => 3,
            ],
        ];


        // Masukkan data ke dalam tabel doctors
        foreach ($doctorsData as $data) {
            Doctor::create($data);
        }
    }
}
