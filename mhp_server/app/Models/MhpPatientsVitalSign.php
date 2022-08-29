<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MhpPatientsVitalSign extends Model
{
    use HasFactory;

    public function patientInfo(){
       return $this->belongsTo('App\Models\MhpPatient','patient_id','id');
    }
}
