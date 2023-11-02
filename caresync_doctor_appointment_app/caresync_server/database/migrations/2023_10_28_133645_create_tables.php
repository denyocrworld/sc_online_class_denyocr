<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('doctors');
        Schema::dropIfExists('hospitals');
        Schema::dropIfExists('doctor_schedules');
        Schema::dropIfExists('specializations');
        Schema::dropIfExists('orders');

         // Tabel users
         Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('photo')->nullable();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('address');
            $table->string('phone_number');
            $table->string('whatsapp_number');
            $table->timestamps();
        });

        // Tabel hospitals
        Schema::create('hospitals', function (Blueprint $table) {
            $table->id();
            $table->string('photo')->nullable();
            $table->string('hospital_name');
            $table->string('hospital_address');
            $table->double('hospital_location_latitude');
            $table->double('hospital_location_longitude');
            $table->string('hospital_phone_number');
            $table->string('hospital_whatsapp_number');
            $table->string('hospital_email');
            $table->timestamps();
        });


        // Tabel specializations
        Schema::create('specializations', function (Blueprint $table) {
            $table->id();
            $table->string('specialization_name');
            $table->timestamps();
        });

        // Tabel doctors
        Schema::create('doctors', function (Blueprint $table) {
            $table->id();
            $table->string('doctor_name');
            $table->string('photo')->nullable();
            $table->string('description')->nullable();
            $table->string('medical_treatment')->nullable();
            $table->string('practical_experience')->nullable();
            $table->string('educational_background')->nullable();
            $table->integer('specialization_id')->nullable();
            // TODO: Ini tidak bekerja, kenapa ya?
            // $table->foreign('specialization_id')->references('id')->on('specializations')->nullable();
            // $table->foreign('hospital_id')->references('id')->on('hospitals')->nullable();
            $table->timestamps();
        });

        // Tabel doctor_schedules
        Schema::create('doctor_schedules', function (Blueprint $table) {
            $table->id();
            $table->integer('hospital_id');
            $table->integer('doctor_id');
            $table->string('day');
            $table->string('start_time');
            $table->string('end_time');
            $table->double('consultation_fee');
            $table->integer('patient_limit');
            // $table->foreign('hospital_id')->references('id')->on('hospitals');
            // $table->foreign('doctor_id')->references('id')->on('doctors');
            $table->timestamps();
        });


        // Tabel orders
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('doctor_id');
            $table->integer('user_id');
            $table->integer('schedule_id');
            $table->string('patient_name');
            $table->date('patient_dob');
            $table->string('patient_gender');
            $table->string('patient_id_card');
            $table->string('patient_address');
            $table->string('patient_phone_number');
            $table->string('patient_whatsapp_number');
            $table->string('payment_type');
            $table->string('payment_transaction_id');
            $table->string('payment_order_id');
            $table->string('payment_transaction_status');
            $table->text('payment_callback_detail');
            // $table->foreign('doctor_id')->references('id')->on('doctors');
            // $table->foreign('user_id')->references('id')->on('users');
            // $table->foreign('schedule_id')->references('id')->on('doctor_schedules');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tables');
    }
};
