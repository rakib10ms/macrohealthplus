<?php

namespace App\Http\Controllers;

use App\Models\MhpProcedureReportChart;
use Illuminate\Http\Request;

class MhpProcedureReportChartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $procedureChartName = new MhpProcedureReportChart();
        $procedureChartName->post_operative = $request->post_operative;
        $procedureChartName->incision = $request->incision;
        $procedureChartName->drain = $request->drain;
        $procedureChartName->blood_loss = $request->blood_loss;
        $procedureChartName->observation = $request->observation;
        $procedureChartName->diet = $request->diet;
        $procedureChartName->analgesia = $request->analgesia;
        $procedureChartName->dvt_prop = $request->dvt_prop;
        $procedureChartName->antibiotics_two = $request->antibiotics_two;
        $procedureChartName->item_numbers = $request->item_numbers;
        $procedureChartName->indicateee = $request->indicateee;
        $procedureChartName->proceduree = $request->proceduree;
        $procedureChartName->findings = $request->findings;
        $procedureChartName->processs = $request->processs;
        $procedureChartName->antibiotics = $request->antibiotics;
        $procedureChartName->pathology = $request->pathology;
        $procedureChartName->discharge = $request->discharge;
        $procedureChartName->followUp = $request->followUp;
        $procedureChartName->save();

        return response()->json([
            'status' => 200,
            'message' => 'Procedure Chart Name Inserted Successfully',
            'procedureChartName' => $procedureChartName


        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpProcedureReportChart  $mhpProcedureReportChart
     * @return \Illuminate\Http\Response
     */
    public function show(MhpProcedureReportChart $mhpProcedureReportChart)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpProcedureReportChart  $mhpProcedureReportChart
     * @return \Illuminate\Http\Response
     */
    public function edit(MhpProcedureReportChart $mhpProcedureReportChart)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpProcedureReportChart  $mhpProcedureReportChart
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MhpProcedureReportChart $mhpProcedureReportChart)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpProcedureReportChart  $mhpProcedureReportChart
     * @return \Illuminate\Http\Response
     */
    public function destroy(MhpProcedureReportChart $mhpProcedureReportChart)
    {
        //
    }
}
