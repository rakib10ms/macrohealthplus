<?php

namespace App\Http\Controllers\GreatDocSetup\Procedure;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpGreatDocProcedure;
use DB;
use Validator;
class GreatDocProcedureController extends Controller
{
    
       public function index(){

        $all_procedure =DB::table('mhp_great_doc_procedures')
     ->leftJoin('mhp_diagnosis_procedures','mhp_diagnosis_procedures.id','mhp_great_doc_procedures.procedure_id')
     ->leftJoin('mhp_diagnosis_procedure_actions','mhp_diagnosis_procedure_actions.id','mhp_great_doc_procedures.procedure_action_id')
     ->leftJoin('mhp_diagnosis_procedure_fors','mhp_diagnosis_procedure_fors.id','mhp_great_doc_procedures.procedure_for_id')->select('mhp_great_doc_procedures.*','mhp_diagnosis_procedures.DiagnosisProcedure_name','mhp_diagnosis_procedure_actions.DiagnosisProcedureActions_name','mhp_diagnosis_procedure_fors.DiagnosisProcedureFor_name')->where('mhp_great_doc_procedures.delete_status',0)->orderBy('mhp_great_doc_procedures.id','desc')->get();


        return response()->json(
            ['status'=>200,'all_procedure'=>$all_procedure]);
    }


          public function store(Request $request)
    {
    //           $validator = Validator::make($request->all(),[
    //         'procedure_id' => 'required|max:100',
    //         'procedure_for_id' => 'required|max:100',
    //         'procedure_action_id' => 'required|max:100',
       
    //     ],
    // );

    //     if ($validator->fails())
    //     {
    //         return response()->json([
    //             'status' => 400,
    //             'errors' => $validator->messages(),
    //         ]);

    //     } 
    //     else{
    
            $procedure = new MhpGreatDocProcedure();
            $procedure->procedure_name = $request->procedure_name;
            $procedure->procedure_for_name  = $request->procedure_for_name ;
            $procedure->procedure_further_details = $request->procedure_further_details;
            $procedure->procedure_action_name = $request->procedure_action_name;
            $procedure->patient_id = $request->patient_id;
            $procedure->save();

            return response()->json(['status'=>200,'message'=>'Procedure Added Successfully']);
        
    // }
}
}
