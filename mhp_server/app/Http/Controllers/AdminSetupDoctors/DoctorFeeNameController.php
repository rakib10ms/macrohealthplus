<?php

namespace App\Http\Controllers\AdminSetupDoctors;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpDoctorFeeName;
use Illuminate\Support\Facades\Validator;
class DoctorFeeNameController extends Controller
{
      public function index()
    {
        $doctorFeeName = MhpDoctorFeeName::where('delete_status',0)->orderBy('id','desc')->get();
        return response()->json(
            ['status'=>200,'doctorFeeName'=>$doctorFeeName]);
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'fee_name' => 'required|max:100',
        ]);
        if ($validator->fails())
        {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);
        }else{
            $doctorFeeName = new MhpDoctorFeeName();
            $doctorFeeName->fee_name = $request->fee_name;
            $doctorFeeName->save();
            return response()->json(['status'=>200,'message'=>'Doctor FeeName Added Successfully']);
        }
    }
    public function edit($id)
    {
        $doctorFeeName=MhpDoctorFeeName::find($id);
        return response()->json(['status'=>200,'doctorFeeName'=>$doctorFeeName]);
    }
    public function update(Request $request, $id)
    {
            $validator = Validator::make($request->all(),[
            'fee_name' => 'required|max:100',
        ]);
        if ($validator->fails())
        {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);
        }else{
            $update_doctorFeeName=MhpDoctorFeeName::find($id);
            $update_doctorFeeName->fee_name=$request->fee_name;
            $update_doctorFeeName->update();
            return response()->json(['status'=>200,'message'=>'Doctor FeeName  Updated Successfully']);
        }
    }
    public function destroy($id)
    {
        $del_doctorFeeName = MhpDoctorFeeName::find($id);
        if ($del_doctorFeeName)
        {
            if ($del_doctorFeeName['delete_status']==0){
                $delete_status = 1;
            }else{
                $delete_status = 0;
            }
            $del_doctorFeeName->delete();
            return response()->json([
                'status' => 200,
                'message' => 'Doctor FeeName  deleted successfully',
            ]);
        }else{
            return response()->json([
                'status' => 404,
                'message' => 'No Doctor FeeName  Found',
            ]);
        }
    }
}
