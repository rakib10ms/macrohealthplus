<?php

namespace App\Http\Controllers;

use App\Models\MhpMentalAffect;
use App\Models\MhpMentalAppearance;
use App\Models\MhpMentalAttitudetowardsexamination;
use App\Models\MhpMentalBehaviour;
use App\Models\MhpMentalHealth;
use App\Models\MhpMentalHistory;
use App\Models\MhpMentalMood;
use App\Models\MhpMentalPerceptualDisturbances;
use App\Models\MhpMentalPsq9Ques1st;
use App\Models\MhpMentalPsq9Ques2nd;
use App\Models\MhpMentalSpeech;
use Illuminate\Http\Request;

class MhpMentalHealthController extends Controller
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
        $mental = new MhpMentalHealth();
        $mental->patient_id = $request->patient_id;
        $mental->save();

        return response()->json([
            'status' => 200,
            'message' => 'Mental data Inserted Successfully',
            'mental' => $mental
        ]);
    }

    public function store_history(Request $request)
    {
        $data = new MhpMentalHistory();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->history_id= $request->history_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }

    public function store_appearance(Request $request)
    {
        $data = new MhpMentalAppearance();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->appearance_id= $request->appearance_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }

    public function store_behaviour(Request $request)
    {
        $data = new MhpMentalBehaviour();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->behaviour_id= $request->behaviour_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }


    public function store_attitudetoward(Request $request)
    {
        $data = new MhpMentalAttitudetowardsexamination();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->attitudetowardsexamination_id= $request->attitudetowardsexamination_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }
    public function store_moods(Request $request)
    {
        $data = new MhpMentalMood();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->mood_id= $request->mood_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }

    public function store_affect(Request $request)
    {
        $data = new MhpMentalAffect();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->affect_id= $request->affect_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }
    public function store_speeche(Request $request)
    {
        $data = new MhpMentalSpeech();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->speeche_id= $request->speeche_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }
    public function store_perceptual(Request $request)
    {
        $data = new MhpMentalPerceptualDisturbances();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->perceptual_id= $request->perceptual_id;
        $data->value= $request->value;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }


    public function store_mental_psq9_1st(Request $request)
    {
        $data = new MhpMentalPsq9Ques1st();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->psq9question_id= $request->psq9question_id;
        $data->question_value_id= $request->question_value_id;
        $data->total_score= $request->total_score;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }

    public function store_mental_psq9_2nd(Request $request)
    {
        $data = new MhpMentalPsq9Ques2nd();
        $data->patient_id = $request->patient_id;
        $data->mental_health_id= $request->mental_health_id;
        $data->psq9question_id= $request->psq9question_id;
        $data->question_value_id= $request->question_value_id;
        $data->total_score= $request->total_score;
        $data->save();
        return response()->json([
            'status' => 200,
            'message' => 'data data Inserted Successfully',
            'data' => $data
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MhpMentalHealth  $mhpMentalHealth
     * @return \Illuminate\Http\Response
     */
    public function show(MhpMentalHealth $mhpMentalHealth)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MhpMentalHealth  $mhpMentalHealth
     * @return \Illuminate\Http\Response
     */
    public function edit(MhpMentalHealth $mhpMentalHealth)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MhpMentalHealth  $mhpMentalHealth
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MhpMentalHealth $mhpMentalHealth)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MhpMentalHealth  $mhpMentalHealth
     * @return \Illuminate\Http\Response
     */
    public function destroy(MhpMentalHealth $mhpMentalHealth)
    {
        //
    }
}
