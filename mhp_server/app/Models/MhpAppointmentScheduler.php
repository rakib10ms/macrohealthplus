<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MhpAppointmentScheduler extends Model
{
    use HasFactory;

    public function doctors()
    {
        return $this->belongsTo('App\Models\MhpDoctorsMaster','doctors_id')->select('id','dr_family_name','dr_given_name','dr_middle_name','dr_preferred_name','dr_images');
    }

    public function patients()
    {
        return $this->belongsTo('App\Models\MhpPatient','patient_id')->select('id','patient_first_name','patient_middle_name','patient_last_name','patient_preferred_name','patient_images');
    }

}
