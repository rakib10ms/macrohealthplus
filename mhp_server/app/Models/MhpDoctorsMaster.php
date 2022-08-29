<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MhpDoctorsMaster extends Model
{
    use HasFactory;

    public function MhpDoctorsDepartment()
    {
        return $this->belongsTo(MhpDoctorsDepartment::class);
    }

    public function title()
    {
        return $this->belongsTo('App\Models\MhpTitle','title')->select('id','title_name');
    }

    public function department()
    {
        return $this->belongsTo('App\Models\MhpDoctorsDepartment','department_id')->select('id','departments_name');
    }

    public function specialist()
    {
        return $this->belongsTo('App\Models\DocSpecialist','specialists_id')->select('id','specialists_name');
    }

    public function birth_sex()
    {
        return $this->belongsTo('App\Models\MhpBirthSex','dr_birth_sex_id')->select('id','birth_sex_name');
    }

    public function city()
    {
        return $this->belongsTo('App\Models\MhpCity','dr_city_id')->select('id','city_name');
    }

    public function contact_via()
    {
        return $this->belongsTo('App\Models\MhpContactVia','dr_contact_via_id')->select('id','contact_via_name');
    }

    public function usual_provider()
    {
        return $this->belongsTo('App\Models\MhpUsualProvider','dr_provider_id')->select('id','usual_provider_name');
    }

    public function slots(){
        return $this->hasMany('App\Models\MhpDoctorsMaster','doctor_id','id');
        }
}
