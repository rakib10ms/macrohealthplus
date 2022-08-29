<?php

namespace App\Http\Controllers;

use App\Models\MhpBloodLoss;
use Illuminate\Http\Request;

class MhpBloodLossController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bloodLossName = MhpBloodLoss::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  antibioticsName",
            "bloodLossName" => $bloodLossName
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
        $bloodLossName= new MhpBloodLoss();
        $bloodLossName->name=$request->name;
        $bloodLossName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'BloodLoss Name Inserted Successfully',
            'bloodLossName' => $bloodLossName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpBloodLoss  $mhpBloodLoss
     * @return \Illuminate\Http\Response
     */
    public function show(MhpBloodLoss $mhpBloodLoss)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpBloodLoss  $mhpBloodLoss
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpBloodLoss::find($id);
        
        return response()->json([
            'status' => 200,
            "bloodLossName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpBloodLoss  $mhpBloodLoss
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $bloodLossName = MhpBloodLoss::find($id);
        $bloodLossName->name = $request->name;
        $bloodLossName->update();

        return response()->json([
            'status' => 200,
            'message' => "Blood Loss Name Updated Successfully",
            'drainName' => $bloodLossName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpBloodLoss  $mhpBloodLoss
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $bloodLossName = MhpBloodLoss::find($id);
        $bloodLossName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Blood Loss Name Deleted Successfully'
        ]);
    }
}
