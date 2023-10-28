<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\DoctorSchedule;

class DoctorSchedulesTableSeeder extends Seeder
{
    /**
     * Run the seeder.
     *
     * @return void
     */
    public function run()
    {
        // Data dummy jadwal dokter
        $schedulesData = [
            [
                'hospital_id' => 1,
                'doctor_id' => 1,
                'schedule_date' => '2023-11-01',
                'schedule_time' => '09:00 AM',
                'patient_limit' => 20,
            ],
            [
                'hospital_id' => 2,
                'doctor_id' => 2,
                'schedule_date' => '2023-11-02',
                'schedule_time' => '10:00 AM',
                'patient_limit' => 15,
            ],
            [
                'hospital_id' => 3,
                'doctor_id' => 3,
                'schedule_date' => '2023-11-03',
                'schedule_time' => '02:00 PM',
                'patient_limit' => 25,
            ],
            // Tambahkan data jadwal dokter lainnya di sini...
        ];

        // Masukkan data ke dalam tabel doctor_schedules
        foreach ($schedulesData as $data) {
            DoctorSchedule::create($data);
        }
    }
}
