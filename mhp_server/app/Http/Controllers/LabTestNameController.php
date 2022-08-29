<?php

namespace App\Http\Controllers;


use App\Models\LabTestName;
use Illuminate\Http\Request;
use DB;

class LabTestNameController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $testName = DB::table('lab_test_names')->leftJoin('mhp_lab_test_types','mhp_lab_test_types.id','=','lab_test_names.test_type_id')->get();
        // return response()->json([
        //     'status' => 200,
        //     'testName' => $testName ,
        // ]);

         $testName = LabTestName::with('TypeName')->get();
        return response()->json([
            'status' => 200,
            'testName' => $testName ,
        ]);
 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $testName= new LabTestName();
        $testName->test_type_id=$request->test_type_id;
        $testName->test_name=$request->test_name;
        $testName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Lab Test Name Inserted Successfully',
            'testName' => $testName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\LabTestName  $labTestName
     * @return \Illuminate\Http\Response
     */
    public function show(LabTestName $labTestName)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\LabTestName  $labTestName
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = LabTestName::with('TypeName')->find($id);

        return response()->json([
            'status' => 200,
            "testName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\LabTestName  $labTestName
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $testName = LabTestName::find($id);
        $testName->test_name = $request->test_name;
        $testName->test_type_id = $request->test_type_id;
        $testName->update();

        return response()->json([
            'status' => 200,
            'message' => 'Lab Test Name Update Successfully',
            'testName' => $testName
        ]);
    } 

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\LabTestName  $labTestName
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
         //return $id;
        $testName = LabTestName::find($id);
         $testName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Lab Test Name Delete Successfully',
            'data'=>$testName
        ]);
    }
}
