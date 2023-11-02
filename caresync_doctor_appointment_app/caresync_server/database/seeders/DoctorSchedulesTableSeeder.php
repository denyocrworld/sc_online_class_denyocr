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

        $doctors = \App\Models\Doctor::all();
        foreach ($doctors as $doctor) {
            $daysOfWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
            $randomDay = $daysOfWeek[array_rand($daysOfWeek)];

            $schedulesData = [
                [
                    'hospital_id' => 1,
                    'doctor_id' => $doctor->id,
                    'day' => $randomDay,
                    'start_time' => '08:00',
                    'end_time' => '09:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                [
                    'hospital_id' => 1,
                    'doctor_id' => $doctor->id,
                    'day' => $randomDay,
                    'start_time' => '10:00',
                    'end_time' => '12:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                [
                    'hospital_id' => 2,
                    'doctor_id' => $doctor->id,
                    'day' => $randomDay,
                    'start_time' => '15:00',
                    'end_time' => '16:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                [
                    'hospital_id' => 3,
                    'doctor_id' => $doctor->id,
                    'day' => 'Thursday',
                    'start_time' => '09:00',
                    'end_time' => '10:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                [
                    'hospital_id' => 3,
                    'doctor_id' => $doctor->id,
                    'day' => 'Thursday',
                    'start_time' => '13:00',
                    'end_time' => '14:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                [
                    'hospital_id' => 3,
                    'doctor_id' => $doctor->id,
                    'day' => 'Thursday',
                    'start_time' => '16:00',
                    'end_time' => '17:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                [
                    'hospital_id' => 3,
                    'doctor_id' => $doctor->id,
                    'day' => 'Thursday',
                    'start_time' => '22:00',
                    'end_time' => '23:00',
                    'patient_limit' => 5,
                    'consultation_fee' => 15000,
                ],
                // Tambahkan data jadwal dokter lainnya di sini...
            ];

            // Masukkan data ke dalam tabel doctor_schedules
            foreach ($schedulesData as $data) {
                DoctorSchedule::create($data);
            }
        }
    }
}
