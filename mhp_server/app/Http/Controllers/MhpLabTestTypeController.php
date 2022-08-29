<?php

namespace App\Http\Controllers;

use App\Models\MhpLabTestType;
use Illuminate\Http\Request;

class MhpLabTestTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $testType = MhpLabTestType::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All testTypes",
            "testType" => $testType
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
        // return $request ->all();
        $testType = new MhpLabTestType();
        $testType->name = $request->name;
        $testType->save();

        return response()->json([
            'status' => 200,
            'message' => 'Lab Test Inserted Successfully',
            'testType' => $testType
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpLabTestType  $mhpLabTestType
     * @return \Illuminate\Http\Response
     */
    public function show(MhpLabTestType $mhpLabTestType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpLabTestType  $mhpLabTestType
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpLabTestType::find($id);

        return response()->json([
            'status' => 200,
            "testType" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpLabTestType  $mhpLabTestType
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $testType = MhpLabTestType::find($id);
        $testType->name = $request->name;
        $testType->update();

        return response()->json([
            'status' => 200,
            'message' => 'Lab Test Update Successfully',
            'testType' => $testType
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpLabTestType  $mhpLabTestType
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $testType = MhpLabTestType::find($id);
        $testType->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Lab Test Deleted Successfully'
        ]);
    }
}
