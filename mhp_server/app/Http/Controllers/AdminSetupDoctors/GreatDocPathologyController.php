<?php

namespace App\Http\Controllers\AdminSetupDoctors;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpGreatDocPathology;
use DB;
use Mail;
class GreatDocPathologyController extends Controller
{


   public function index($id){
        $pathology=DB::table('mhp_great_doc_pathologies')->leftJoin('mhp_labratories','mhp_great_doc_pathologies.laboratory_id','mhp_labratories.id')->leftJoin('mhp_clinical_details','mhp_clinical_details.id','mhp_great_doc_pathologies.clinical_details_id')->select('mhp_great_doc_pathologies.*','mhp_labratories.labratory_name','mhp_clinical_details.clinical_details_name')->where('patient_id',$id)->get();

        return response()->json([
            'status'=>200,
            'pathology'=>$pathology
        ]);
    }


       public function store(Request $request)
    {
            $pathology = new MhpGreatDocPathology();
            $pathology->request_date = $request->request_date;
            $pathology->laboratory_id = $request->laboratory_id;
            $pathology->favorite_test_name = implode(',',$request->favorite_test_name);
            $pathology->test_name = implode(',',$request->test_name);
            $pathology->lmp_date = $request->lmp_date;
            $pathology->edc_date = $request->edc_date;
            $pathology->pregnant = $request->pregnant;
            $pathology->billing = $request->billing;
            $pathology->clinical_details_fasting = $request->clinical_details_fasting;
            $pathology->clinical_details_id = $request->clinical_details_id;
            $pathology->extra_details = $request->extra_details;
            $pathology->further_clinical_details = $request->further_clinical_details;
            $pathology->patient_id = $request->patient_id;
            $pathology->save();

            return response()->json(['status'=>200,'message'=>'Great Doc Pathology Added Successfully']);
    }
       public function destroy($id){
   
      $del_slots = MhpGreatDocPathology::find($id);
       
            $del_slots->delete();
            return response()->json([
                'status' => 200,
                'message' => 'Great Doc Pathology deleted Successfully',
            ]);

      

    }

    public function sendMail(Request $request,$id){
          $patient_pathology = MhpGreatDocPathology::where('patient_id',$id)->get();
             $info = array(
            'name' => "Alex"
        );
        Mail::send('mail.pathology_mail', $info, function ($message)
        {
            $message->to('rakib10ms@gmail.com', 'w3schools')
                ->subject('HTML test eMail from W3schools.');
            $message->from('karlosray@gmail.com', 'Alex');
        });
            return response()->json([
                'status' => 200,
                'patient_pathology'=>$patient_pathology
            ]);
    }

}
