<?php

namespace App\Http\Controllers;

use App\Models\MhpDischarge;
use Illuminate\Http\Request;

class MhpDischargeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dischargeName = MhpDischarge::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  dischargeName",
            "dischargeName" => $dischargeName
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
        $dischargeName= new MhpDischarge();
        $dischargeName->name=$request->name;
        $dischargeName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Discharge Name Inserted Successfully',
            'dischargeName' => $dischargeName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpDischarge  $mhpDischarge
     * @return \Illuminate\Http\Response
     */
    public function show(MhpDischarge $mhpDischarge)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpDischarge  $mhpDischarge
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpDischarge::find($id);
        
        return response()->json([
            'status' => 200,
            "dischargeName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpDischarge  $mhpDischarge
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $dischargeName = MhpDischarge::find($id);
        $dischargeName->name = $request->name;
        $dischargeName->update();

        return response()->json([
            'status' => 200,
            'message' => "Discharge Name Updated Successfully",
            'dischargeName' => $dischargeName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpDischarge  $mhpDischarge
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $dischargeName = MhpDischarge::find($id);
        $dischargeName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Discharge Name Deleted Successfully'
        ]);
    }
}
