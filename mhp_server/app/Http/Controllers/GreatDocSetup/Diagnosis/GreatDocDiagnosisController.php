<?php

namespace App\Http\Controllers\GreatDocSetup\Diagnosis;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpGreatDocDiagnosis;
use DB;
use Validator;

class GreatDocDiagnosisController extends Controller
{


        public function index()
        {

                $all_diagnosis = DB::table('mhp_great_doc_diagnoses')
                        ->leftJoin('mhp_diagnosis_procedures', 'mhp_diagnosis_procedures.id', 'mhp_great_doc_diagnoses.diagnosis_id')
                        ->leftJoin('mhp_diagnosis_procedure_actions', 'mhp_diagnosis_procedure_actions.id', 'mhp_great_doc_diagnoses.diagnosis_action_id')
                        ->leftJoin('mhp_diagnosis_procedure_fors', 'mhp_diagnosis_procedure_fors.id', 'mhp_great_doc_diagnoses.diagnosis_for_id')->select('mhp_great_doc_diagnoses.*', 'mhp_diagnosis_procedures.DiagnosisProcedure_name', 'mhp_diagnosis_procedure_actions.DiagnosisProcedureActions_name', 'mhp_diagnosis_procedure_fors.DiagnosisProcedureFor_name')->where('mhp_great_doc_diagnoses.delete_status', 0)->orderBy('mhp_great_doc_diagnoses.id', 'desc')->get();


                return response()->json(
                        ['status' => 200, 'all_diagnosis' => $all_diagnosis]
                );
        }


        public function store(Request $request)
        {
                //         $validator = Validator::make($request->all(),[
                //         'diagnosis_id' => 'required|max:100',
                //         'diagnosis_for_id' => 'required|max:100',
                //         'diagnosis_action_id' => 'required|max:100',

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

                $diagnosis = new MhpGreatDocDiagnosis();
                $diagnosis->diagnosis_name = $request->diagnosis_name;
                $diagnosis->diagnosis_for_name  = $request->diagnosis_for_name;
                $diagnosis->diagnosis_further_details = $request->diagnosis_further_details;
                $diagnosis->diagnosis_action_name = $request->diagnosis_action_name;
                $diagnosis->diagnosis_provitional_status = $request->diagnosis_provitional_status;
                $diagnosis->patient_id = $request->patient_id;
                $diagnosis->save();

                return response()->json(['status' => 200, 'message' => 'Dianosis Added Successfully']);

                // }
        }
}
