<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MhpEmployee extends Model
{
    use HasFactory;

    public function birth_sex()
    {
        return $this->belongsTo('App\Models\MhpBirthSex','birth_sex_id')->select('id','birth_sex_name');
    }

    public function user_type()
    {
        return $this->belongsTo('App\Models\MhpUserType','user_type_id')->select('id','user_type_name');
    }


    public function city()
    {
        return $this->belongsTo('App\Models\MhpCity','city_id')->select('id','city_name');
    }

    public function contact_via()
    {
        return $this->belongsTo('App\Models\MhpContactVia','contact_via_id')->select('id','contact_via_name');
    }

    public function usual_provider()
    {
        return $this->belongsTo('App\Models\MhpUsualProvider','provider_id')->select('id','usual_provider_name');
    }

    public function title()
    {
        return $this->belongsTo('App\Models\MhpTitle','title')->select('id','title_name');
    }
}
