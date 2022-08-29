<?php

namespace App\Http\Controllers\LabModule;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpLabModule;
use App\Models\MhpRadiologyCenter;
use App\Models\MhpRadiologyTestName;
use App\Models\LabTestName;
use App\Models\DoctorInbox;
use Illuminate\Support\Facades\Validator;
use DB;
use App\Mail\LabToDoctor;
use Illuminate\Support\Facades\Mail;
class LabModuleController extends Controller
{
    

    public function store(Request $request)
    {

            $lab_module = new MhpLabModule();
               if($request->hasFile('report')){
            $file=$request->file('report');
            $extension=$file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('lab_modules/',$filename);
            $lab_module->report =$filename ;
         } 

            $lab_module->department_id = $request->department_id;
            $lab_module->usual_provider_id = $request->usual_provider_id;
            $lab_module->reference_id = $request->reference_id;
            $lab_module->test_type_id = $request->test_type_id;
            $lab_module->date = $request->date;
            $lab_module->test_name_id = $request->test_name_id;
            $lab_module->patient_id = $request->patient_id;
            $lab_module->save();

            return response()->json(['status'=>200,'message'=>'lab_module Added Successfully']);
        }



public function allTestNameSearchById($id){
$test_names=LabTestName::where('test_type_id',$id)->get();

        return response()->json([
            'status'=>200,
            'test_names'=>$test_names,
        ]);
}
  public function labModuleSearchById($id){
  
      $patient_labs=DB::table('mhp_lab_modules')->leftJoin('mhp_lab_test_types','mhp_lab_modules.test_type_id','mhp_lab_test_types.id')->leftJoin('lab_test_names','lab_test_names.id','mhp_lab_modules.test_name_id')->select('mhp_lab_test_types.name','lab_test_names.test_name','mhp_lab_modules.*')->where('patient_id',$id)->get();

        return response()->json([
            'status'=>200,
            'patient_labs'=>$patient_labs,
        ]);
  }

      public function destroy($id){
   
      $del_slots = MhpLabModule::find($id);
       
      $del_slots->delete();
        return response()->json([
            'status'=>200,
            
        ]);
    }

    public function patientLabWithDoctor($doctorId){


            // $doc_labs_patient=DB::table('mhp_lab_modules')
            // ->leftJoin('mhp_patients','mhp_patients.id','mhp_lab_modules.patient_id')
            // ->where('mhp_lab_modules.reference_id',$doctorId)
            // ->select('mhp_patients.patient_preferred_name','mhp_patients.patient_address1','mhp_patients.patient_images','mhp_lab_modules.date','mhp_patients.id as patient_id','mhp_lab_modules.id as lab_id')
            // ->distinct('mhp_lab_modules.patient_id')
            // ->get();

               $doc_labs_patient=DB::table('mhp_lab_modules')
            ->leftJoin('mhp_patients','mhp_patients.id','mhp_lab_modules.patient_id')
            ->where('mhp_lab_modules.reference_id',$doctorId)
            ->select('mhp_patients.patient_preferred_name','mhp_patients.patient_address1','mhp_patients.patient_images','mhp_patients.id as patient_id')
            ->distinct('mhp_lab_modules.patient_id')
            ->get();



            return response()->json([
                'status'=>200,
                'doc_labs_patient'=>$doc_labs_patient,
            ]);
    }
    public function patientLabReport($doctorId,$patientId){

 $patient_labs=DB::table('mhp_lab_modules')->leftJoin('mhp_lab_test_types','mhp_lab_modules.test_type_id','mhp_lab_test_types.id')->leftJoin('lab_test_names','lab_test_names.id','mhp_lab_modules.test_name_id')->select('mhp_lab_test_types.name','lab_test_names.test_name','mhp_lab_modules.*')->where('patient_id',$patientId)->where('reference_id',$doctorId)->get();

        return response()->json([
            'status'=>200,
            'patient_labs'=>$patient_labs,
        ]);
    }

    //save doctor inbox

    public function saveDoctorInbox(Request $request){
             $save_dr_inbox=new DoctorInbox();
     $save_dr_inbox->patient_id = $request->patient_id;
            $save_dr_inbox->store_result_in_id = $request->store_result_in_id;
            $save_dr_inbox->action_to_be_taken_id = $request->action_to_be_taken_id;
            $save_dr_inbox->the_result_is_id = $request->the_result_is_id;
            $save_dr_inbox->patient_lab_id = $request->patient_lab_id;
            $save_dr_inbox->doctor_id = $request->doctor_id;
            $save_dr_inbox->save();

            return response()->json(['status'=>200,'message'=>'Doctor Inbox added Successfully']);
    }


    ///mail to doctor

     public function mail()
    {
        Mail::to('therichposts@gmail.com')->send(new PaymentDone());
        return response()->json(["message" => "Email sent successfully."]);
    }
}
