<?php

namespace App\Http\Controllers;

use App\Models\MhpAntibioticsTwo;
use Illuminate\Http\Request;

class MhpAntibioticsTwoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $antibioticsTwoName = MhpAntibioticsTwo::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  antibioticsTwoName",
            "antibioticsTwoName" => $antibioticsTwoName
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
        $antibioticsTwoName= new MhpAntibioticsTwo();
        $antibioticsTwoName->name=$request->name;
        $antibioticsTwoName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Antibiotics Two Name Inserted Successfully',
            'antibioticsTwoName' => $antibioticsTwoName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpAntibioticsTwo  $mhpAntibioticsTwo
     * @return \Illuminate\Http\Response
     */
    public function show(MhpAntibioticsTwo $mhpAntibioticsTwo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpAntibioticsTwo  $mhpAntibioticsTwo
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpAntibioticsTwo::find($id);
        
        return response()->json([
            'status' => 200,
            "antibioticsTwoName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpAntibioticsTwo  $mhpAntibioticsTwo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $antibioticsTwoName = MhpAntibioticsTwo::find($id);
        $antibioticsTwoName->name = $request->name;
        $antibioticsTwoName->update();

        return response()->json([
            'status' => 200,
            'message' => "Antibiotics Two Name Updated Successfully",
            'antibioticsTwoName' => $antibioticsTwoName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpAntibioticsTwo  $mhpAntibioticsTwo
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        //
        $antibioticsTwoName = MhpAntibioticsTwo::find($id);
        $antibioticsTwoName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Antibiotics Two Name Deleted Successfully'
        ]);
    }
}
