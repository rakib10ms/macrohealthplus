<?php

namespace App\Http\Controllers;

use App\Models\MhpDiet;
use Illuminate\Http\Request;

class MhpDietController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dietsName = MhpDiet::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  dietsName",
            "dietsName" => $dietsName
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
        //
        $dietsName= new MhpDiet();
        $dietsName->name=$request->name;
        $dietsName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Diet Name Inserted Successfully',
            'dietsName' => $dietsName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpDiet  $mhpDiet
     * @return \Illuminate\Http\Response
     */
    public function show(MhpDiet $mhpDiet)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpDiet  $mhpDiet
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data = MhpDiet::find($id);
        
        return response()->json([
            'status' => 200,
            "dietName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpDiet  $mhpDiet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $dietsName = MhpDiet::find($id);
        $dietsName->name = $request->name;
        $dietsName->update();

        return response()->json([
            'status' => 200,
            'message' => "Diet Name Updated Successfully",
            'dietsName' => $dietsName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpDiet  $mhpDiet
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        //
        $dietsName = MhpDiet::find($id);
        $dietsName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Diet Name Deleted Successfully'
        ]);
    }
}
