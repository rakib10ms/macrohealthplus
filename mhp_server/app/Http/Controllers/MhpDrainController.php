<?php

namespace App\Http\Controllers;

use App\Models\MhpDrain;
use Illuminate\Http\Request;

class MhpDrainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $drainName = MhpDrain::orderBy('id', 'desc')->get();

        return response()->json([
            "status" => 200,
            "message" => "All  drainName",
            "drainName" => $drainName
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
        $drainName= new MhpDrain();
        $drainName->name=$request->name;
        $drainName->save();

        
        return response()->json([
            'status' => 200,
            'message' => 'Drain Name Inserted Successfully',
            'drainName' => $drainName
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpDrain  $mhpDrain
     * @return \Illuminate\Http\Response
     */
    public function show(MhpDrain $mhpDrain)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpDrain  $mhpDrain
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MhpDrain::find($id);
        
        return response()->json([
            'status' => 200,
            "drainName" => $data
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpDrain  $mhpDrain
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $drainName = MhpDrain::find($id);
        $drainName->name = $request->name;
        $drainName->update();

        return response()->json([
            'status' => 200,
            'message' => 'Drain Name Updated Successfully',
            'drainName' => $drainName
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpDrain  $mhpDrain
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $drainName = MhpDrain::find($id);
        $drainName->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Drain Name Deleted Successfully'
        ]);
    }
}
