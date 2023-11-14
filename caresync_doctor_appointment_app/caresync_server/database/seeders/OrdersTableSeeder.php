<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Order;
use App\Models\Doctor;
use App\Models\User;
use App\Models\DoctorSchedule;

class OrdersTableSeeder extends Seeder
{
    public function run()
    {
        // Data dummy pesanan (orders)
        $ordersData = [];

        for ($i = 1; $i <= 20; $i++) {
            $ordersData[] = [
                'doctor_id' => 1,
                'user_id' => 1,
                'schedule_id' => 1,
                'patient_name' => 'Patient ' . $i,
                'patient_dob' => '1990-01-01',
                'patient_gender' => 'Male',
                'patient_id_card' => '123456789',
                'patient_address' => 'Address ' . $i,
                'patient_phone_number' => '1234567890',
                'patient_whatsapp_number' => '9876543210',
                'payment_type' => 'Credit Card',
                'payment_transaction_id' => 'TXN' . $i,
                'payment_order_id' => 'ORD' . $i,
                'payment_transaction_status' => 'Success',
                'payment_callback_detail' => 'Payment successful for Order ' . $i,
            ];
        }

        // Masukkan data ke dalam tabel orders
        Order::insert($ordersData);
    }
}
