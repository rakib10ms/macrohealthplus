<?php

namespace App\Http\Controllers\AdminSetupDoctors;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpVaccineName;
use Illuminate\Support\Facades\Validator;

class VaccineNameController extends Controller
{
    public function index()
    {
        $vaccine_name = MhpVaccineName::orderBy('id', 'desc')->get();

        return response()->json(["status" => 200, "vaccine_name" => $vaccine_name]);
    }

    public function store(Request $request)
    {
       // return  $request->all();
    
            $vaccine_name = new MhpVaccineName();
            $vaccine_name->vaccine_name = $request->vaccine_name;
            $vaccine_name->save();
            return response()->json([
                "status" => 200,
                "message" => "Vaccine Name added successfully"
            ]);
        
    }

    public function edit($id)
    {
        $vaccine_name = MhpVaccineName::find($id);

        return response()->json(["status"=>200,"vaccine_name"=>$vaccine_name]);
    }
    public function update (Request $request, $id) {
      
            $vaccine_name =MhpVaccineName::find($id);
            $vaccine_name->vaccine_name = $request->vaccine_name;
            $vaccine_name->save();
            return response()->json([
                "status" => 200,
                "message" => "Vaccine Name updated successfully"
            ]);
        
    }

    public function destroy ($id){
        $vaccine_name = MhpVaccineName::find($id);
        $vaccine_name->delete();
        return response()->json([
            "status"=> 200,
            "message"=> "Vaccine Name deleted successfully"
        ]);
    }
}
