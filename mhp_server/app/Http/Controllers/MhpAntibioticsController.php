<?php

namespace App\Http\Controllers;

use App\Models\MhpAntibiotics;
use Illuminate\Http\Request;

class MhpAntibioticsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $antibioticsName = MhpAntibiotics::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  antibioticsName",
            "antibioticsName" => $antibioticsName
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
        $antibioticsName= new MhpAntibiotics();
        $antibioticsName->name=$request->name;
        $antibioticsName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Antibiotics Name Inserted Successfully',
            'antibioticsName' => $antibioticsName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpAntibiotics  $mhpAntibiotics
     * @return \Illuminate\Http\Response
     */
    public function show(MhpAntibiotics $mhpAntibiotics)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpAntibiotics  $mhpAntibiotics
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpAntibiotics::find($id);
        
        return response()->json([
            'status' => 200,
            "antibioticsName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpAntibiotics  $mhpAntibiotics
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $antibioticsName = MhpAntibiotics::find($id);
        $antibioticsName->name = $request->name;
        $antibioticsName->update();

        return response()->json([
            'status' => 200,
            'message' => 'Antibiotics Name Updated Successfully',
            'drainName' => $antibioticsName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpAntibiotics  $mhpAntibiotics
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $antibioticsName = MhpAntibiotics::find($id);
        $antibioticsName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Antibiotics Name Deleted Successfully'
        ]);
    }
}
