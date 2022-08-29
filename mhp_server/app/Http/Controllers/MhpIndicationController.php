<?php

namespace App\Http\Controllers;

use App\Models\MhpIndication;
use Illuminate\Http\Request;

class MhpIndicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $indicationName = MhpIndication::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All indication",
            "indicationName" => $indicationName
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
        $indicationName = new MhpIndication();
        $indicationName->name = $request->name;
        $indicationName->save();

        return response()->json([
            'status' => 200,
            'message' => 'Indication Inserted Successfully',
            'indicationName' => $indicationName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpIndication  $mhpIndication
     * @return \Illuminate\Http\Response
     */
    public function show(MhpIndication $mhpIndication)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpIndication  $mhpIndication
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpIndication::find($id);
        
        return response()->json([
            'status' => 200,
            "indicationName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpIndication  $mhpIndication
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $indicationName = MhpIndication::find($id);
        $indicationName->name = $request->name;
        $indicationName->update();

        return response()->json([
            'status' => 200,
            'message' => 'Indication Name Updated Successfully',
            'indicationName' => $indicationName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpIndication  $mhpIndication
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $indicationName = MhpIndication::find($id);
        $indicationName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Indication Name Deleted Successfully'
        ]);
    }
}
