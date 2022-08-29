<?php

namespace App\Http\Controllers\GreatDocSetup;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpFlexorDigitorumProfundusTest;
use Illuminate\Support\Facades\Validator;

class MhpFlexorDigitorumProfundusTestController extends Controller
{
    //
    public function index()
    {
        $flexorDigitorumProfundusTest = MhpFlexorDigitorumProfundusTest::where('delete_status', 0)->orderBy('id', 'desc')->get();


        return response()->json(
            ['status' => 200, 'flexorDigitorumProfundusTest' => $flexorDigitorumProfundusTest]
        );
    }



    public function store(Request $request)
    {

        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required|max:100',

            ],
            // ['status_id.required' => 'Status field is required!'] 
        );

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);
        } else {

            $flexorDigitorumProfundusTest = new MhpFlexorDigitorumProfundusTest();
            $flexorDigitorumProfundusTest->name = $request->name;

            $flexorDigitorumProfundusTest->save();

            return response()->json(['status' => 200, 'message' => 'Flexor Digitorum Profundus Test Added Successfully']);
        }
    }


    public function edit($id)
    {
        $flexorDigitorumProfundusTest = MhpFlexorDigitorumProfundusTest::find($id);
        return response()->json(['status' => 200, 'flexorDigitorumProfundusTest' => $flexorDigitorumProfundusTest]);
    }


    public function update(Request $request, $id)
    {

        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required|max:100',


            ],
            // ['status_id.required'=>'Status field is required']
        );

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);
        } else {

            $update_flexorDigitorumProfundusTest = MhpFlexorDigitorumProfundusTest::find($id);
            $update_flexorDigitorumProfundusTest->name = $request->name;
            $update_flexorDigitorumProfundusTest->update();

            return response()->json(['status' => 200, 'message' => 'Flexor Digitorum Profundus Test Updated Successfully']);
        }
    }

    public function destroy($id)
    {
        $del_flexorDigitorumProfundusTest = MhpFlexorDigitorumProfundusTest::find($id);
        $del_flexorDigitorumProfundusTest->delete_status = 1;
        $del_flexorDigitorumProfundusTest->save();
        return response()->json([
            'status' => 200,
            'message' => 'Flexor Digitorum Profundus Test deleted successfully',
        ]);
    }
}
