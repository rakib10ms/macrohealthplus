<?php

namespace App\Http\Controllers;

use App\Models\MhpDvtProp;
use Illuminate\Http\Request;

class MhpDvtPropController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dvtPropName = MhpDvtProp::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  dietName",
            "dvtPropName" => $dvtPropName
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
        $dvtPropName= new MhpDvtProp();
        $dvtPropName->name=$request->name;
        $dvtPropName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Dvt Prop Name Inserted Successfully',
            'dvtPropName' => $dvtPropName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpDvtProp  $mhpDvtProp
     * @return \Illuminate\Http\Response
     */
    public function show(MhpDvtProp $mhpDvtProp)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpDvtProp  $mhpDvtProp
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpDvtProp::find($id);
        
        return response()->json([
            'status' => 200,
            "dvtPropName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpDvtProp  $mhpDvtProp
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $dvtPropName = MhpDvtProp::find($id);
        $dvtPropName->name = $request->name;
        $dvtPropName->update();

        return response()->json([
            'status' => 200,
            'message' => "Dvt Prop Name Updated Successfully",
            'dvtPropName' => $dvtPropName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpDvtProp  $mhpDvtProp
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $dvtPropName = MhpDvtProp::find($id);
        $dvtPropName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Dvt Prop Name Deleted Successfully'
        ]);
    }
}
