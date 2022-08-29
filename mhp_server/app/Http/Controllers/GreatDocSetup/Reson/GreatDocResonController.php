<?php

namespace App\Http\Controllers\GreatDocSetup\Reson;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpGreatDocReson;
use DB;

class GreatDocResonController extends Controller
{

    public function index($id)
    {
        $todaysDate = date("Y-m-d");
        // $checkUpdate=(date('Y-m-d', strtotime('-1 day', strtotime($todaysDate))));

        $allReasons = MhpGreatDocReson::where('last_check_up_date', 'LIKE', '%' . $todaysDate . '%')->where('patient_id', $id)->get();
        return response()->json([
            'status' => 200,
            'allReasons' => $allReasons
        ]);
    }

    public function reson_for_visit($id)
    {
     
        $allReasons = MhpGreatDocReson::where('patient_id', $id)->get();
        return response()->json([
            'status' => 200,
            'allReasons' => $allReasons
        ]);
    }



    public function store(Request $request)
    {

        $reson = new MhpGreatDocReson();
        $reson->reson_name = $request->reson_name;
        $reson->code = $request->code;
        $reson->reson_for_name  = $request->reson_for_name;
        $reson->reson_further_details = $request->reson_further_details;
        $reson->patient_id = $request->patient_id;
        $reson->nurse_id = $request->nurse_id;
        $reson->category_name = $request->category_name;
        $reson->last_check_up_date = $request->last_check_up_date;
        $reson->save();

        return response()->json([
            'status' => 200,
            'message' => 'Reason Added Successfully',
            'reason' => $reson
        ]);
    }
    public function deleteReasonForVisit(Request $request, $id)
    {
        $deleteData = MhpGreatDocReson::where('id', $id)->first();
        $deleteData->delete();
        return response()->json([
            'status' => 200
        ]);
    }

    public function editReasonForVisit($id)
    {
        $edit_reason = MhpGreatDocReson::find($id);
        return response()->json([
            'status' => 200,
            'edit_reason' => $edit_reason
        ]);
    }
    public function updateReasonForVisit(Request $request, $id)
    {
        $update_reson = MhpGreatDocReson::find($id);
        $update_reson->reson_name = $request->reson_name;
        $update_reson->reson_for_name  = $request->reson_for_name;
        $update_reson->reson_further_details = $request->reson_further_details;
        $update_reson->patient_id = $request->patient_id;
        $update_reson->nurse_id = $request->nurse_id;
        $update_reson->category_name = $request->category_name;
        $update_reson->last_check_up_date = $request->last_check_up_date;
        $update_reson->update();

        return response()->json([
            'status' => 200,
            'message' => 'Reason Updated Successfully',
            'update_reson' => $update_reson
        ]);
    }
}
