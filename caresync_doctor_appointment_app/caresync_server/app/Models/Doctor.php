<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Doctor extends Model
{
    use HasFactory;
    // protected $fillable = [
    //     'doctor_name',
    //     'specialization_id',
    //     'hospital_id',
    // ];

    protected $guarded = ['id'];

    public function doctorSchedules()
    {
        return $this->hasMany(DoctorSchedule::class);
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }

    public function specialization()
    {
        return $this->belongsTo(Specialization::class);
    }
}
