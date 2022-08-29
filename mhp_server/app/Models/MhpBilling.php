<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MhpBilling extends Model
{
    use HasFactory;

    public function doctor_name()
    {
        return $this->belongsTo('App\Models\MhpDoctorsMaster','doctor_id')->select('id','dr_given_name','dr_middle_name','dr_last_name');
    }
}
