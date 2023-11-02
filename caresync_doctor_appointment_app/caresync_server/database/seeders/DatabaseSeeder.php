<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Database\Seeders\DoctorSchedulesTableSeeder;
use Database\Seeders\DoctorsTableSeeder;
use Database\Seeders\HospitalsTableSeeder;
use Database\Seeders\OrdersTableSeeder;
use Database\Seeders\SpecializationsTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $obj = new DoctorsTableSeeder();
        $obj->run();

        $obj = new DoctorSchedulesTableSeeder();
        $obj->run();

        $obj = new HospitalsTableSeeder();
        $obj->run();

        $obj = new OrdersTableSeeder();
        $obj->run();

        $obj = new SpecializationsTableSeeder();
        $obj->run();
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
