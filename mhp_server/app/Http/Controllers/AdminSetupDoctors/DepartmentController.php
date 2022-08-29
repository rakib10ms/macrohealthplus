<?php

namespace App\Http\Controllers\AdminSetupDoctors;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpDoctorsDepartment;
use Illuminate\Support\Facades\Validator;

class DepartmentController extends Controller
{
    //
    public function index()
    {
        $department = MhpDoctorsDepartment::where('delete_status',0)->orderBy('id','desc')->get();
        return response()->json([
            'status' => 200,
            'department' => $department,
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'departments_name' => 'required|max:191',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validate_error' => $validator->messages(),
            ]);
        } else {
            $ethnicity = new MhpDoctorsDepartment();
            $ethnicity->departments_name = $request->input('departments_name');
            $ethnicity->save();

            return response()->json([
                'status' => 200,
                'message' => 'Department Added Successfully',
            ]);
        }
    }

    public function edit($id)
    {
        $ethnicity = MhpDoctorsDepartment::find($id);
        if ($ethnicity) {
            return response()->json([
                'status' => 200,
                'ethnicity' => $ethnicity,
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'No Department Id Found',
            ]);
        }

    }

    public function update(Request $request, $id)
    {
//        dd('asdfsdfsdfdsf');
        $validator = Validator::make($request->all(), [
            'departments_name' => 'required|max:191',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validate_error' => $validator->messages(),
            ]);
        } else {
            $ethnicity = MhpDoctorsDepartment::find($id);
            if ($ethnicity) {
                $ethnicity->departments_name = $request->input('departments_name');
                $ethnicity->update();
                return response()->json([
                    'status' => 200,
                    'message' => 'Department Updated Successfully',
                ]);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => 'No Department Id Found',
                ]);
            }
        }

    }

    public function destroy($id)
    {

        $drugs = MhpDoctorsDepartment::find($id);
        if ($drugs)
        {
            if ($drugs['delete_status']==0){
                $delete_status = 1;
            }else{
                $delete_status = 0;
            }
            $drugs->delete_status = $delete_status;
            $drugs->save();
            return response()->json([
                'status' => 200,
                'message' => 'Department deleted successfully',
            ]);

        }else{
            return response()->json([
                'status' => 404,
                'message' => 'No Department Found',
            ]);
        }

    }

  
}
