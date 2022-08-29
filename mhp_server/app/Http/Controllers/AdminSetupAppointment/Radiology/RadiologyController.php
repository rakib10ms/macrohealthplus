<?php

namespace App\Http\Controllers\AdminSetupAppointment\Radiology;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpRadiology;
use DB;

class RadiologyController extends Controller
{
    public function index(){

        $all_radiology =DB::table('mhp_radiologies')
     ->leftJoin('mhp_radiology_centers','mhp_radiologies.center_id','mhp_radiology_centers.id')
     ->leftJoin('mhp_radiology_test_names','mhp_radiologies.test_name_id','mhp_radiology_test_names.radiology_test_type_id')
     ->leftJoin('mhp_clinical_indications','mhp_radiologies.clinical_id','mhp_clinical_indications.id')->where('mhp_radiologies.delete_status',0)->select('mhp_radiologies.*','mhp_radiology_centers.radiology_center_name','mhp_radiology_test_names.radiology_test_name','mhp_clinical_indications.clinical_indications_name')->where('mhp_radiologies.delete_status',0)->orderBy('mhp_radiologies.id','desc')->get();


        return response()->json(
            ['status'=>200,'all_radiology'=>$all_radiology]);
    }

      public function store(Request $request)
    {
    
            $radiology = new MhpRadiology();
            $radiology->center_id = $request->center_id;
            $radiology->test_date = $request->test_date;
            $radiology->center_date = $request->center_date;
            $radiology->test_type_id = $request->test_type_id;
            $radiology->symptom_name = implode(',', $request->symptom_name);
            $radiology->clinical_id = $request->clinical_id;
            $radiology->test_name_id = $request->test_name_id;
            $radiology->additional_test_name = $request->additional_test_name;
            $radiology->patient_id = $request->patient_id;
            $radiology->save();

            return response()->json(['status'=>200,'message'=>'Radiology Added Successfully']);
        
    }
        public function destroy($id)
    {
        $del_radiology = MhpRadiology::find($id);

        if ($del_radiology)
        {
            if ($del_radiology['delete_status']==0){
                $delete_status = 1;
            }else{
                $delete_status = 0;
            }
            $del_radiology->delete();
            return response()->json([
                'status' => 200,
                'message' => 'Radiology  deleted successfully',
            ]);

        }else{
            return response()->json([
                'status' => 404,
                'message' => 'No Radiology  Found',
            ]);
        }


    }
}
