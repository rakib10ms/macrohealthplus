<?php

namespace App\Http\Controllers;

use App\Models\MhpNeurological;
use App\Models\MhpNeurologicalFrontalLobe;
use App\Models\MhpNeurologicalHistoriy;
use App\Models\MhpNeurologicalOccipitalLobe;
use App\Models\MhpNeurologicalParietalLobe;
use App\Models\MhpNeurologicalSpeech;
use App\Models\MhpNeurologicalTemporalLobe;
use Illuminate\Http\Request;

class MhpNeurologicalController extends Controller
{
    public function store(Request $request)
    {
        $nurological = new MhpNeurological();
        $nurological->patient_id = $request->patient_id;
        $nurological->intermittent = $request->intermittent;
        $nurological->continuous = $request->continuous;
        $nurological->save();

        return response()->json([
            'status' => 200,
            'message' => 'nurological Inserted Successfully',
            'nurological' => $nurological
        ]);
    }

    public function store_history(Request $request)
    {
        $nuroData = new MhpNeurologicalHistoriy();
        $nuroData->patient_id = $request->patient_id;
        $nuroData->neurological_id = $request->neurological_id;
        $nuroData->neurological_histories_id = $request->neurological_histories_id;
        $nuroData->value = $request->value;
    
        $nuroData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'nuroData' => $nuroData
        ]);
    }

    public function store_Speech(Request $request)
    {
        $nuroData = new MhpNeurologicalSpeech();
        $nuroData->patient_id = $request->patient_id;
        $nuroData->neurological_id = $request->neurological_id;
        $nuroData->neurological_speeches_id = $request->neurological_speeches_id;
        $nuroData->value = $request->value;
    
        $nuroData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'nuroData' => $nuroData
        ]);
    }

    public function store_parietal(Request $request)
    {
        $nuroData = new MhpNeurologicalParietalLobe();
        $nuroData->patient_id = $request->patient_id;
        $nuroData->neurological_id = $request->neurological_id;
        $nuroData->parietal_lobes_id = $request->parietal_lobes_id;
        $nuroData->value = $request->value;
    
        $nuroData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'nuroData' => $nuroData
        ]);
    }


    public function store_frontal(Request $request)
    {
        $nuroData = new MhpNeurologicalFrontalLobe();
        $nuroData->patient_id = $request->patient_id;
        $nuroData->neurological_id = $request->neurological_id;
        $nuroData->frontal_lobes_id = $request->frontal_lobes_id;
        $nuroData->value = $request->value;
    
        $nuroData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'nuroData' => $nuroData
        ]);
    }

    public function store_temporal(Request $request)
    {
        $nuroData = new MhpNeurologicalTemporalLobe();
        $nuroData->patient_id = $request->patient_id;
        $nuroData->neurological_id = $request->neurological_id;
        $nuroData->temporal_lobes_id = $request->temporal_lobes_id;
        $nuroData->value = $request->value;
    
        $nuroData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'nuroData' => $nuroData
        ]);
    }


    public function store_occipital(Request $request)
    {
        $nuroData = new MhpNeurologicalOccipitalLobe();
        $nuroData->patient_id = $request->patient_id;
        $nuroData->neurological_id = $request->neurological_id;
        $nuroData->occipital_lobes_id = $request->occipital_lobes_id;
        $nuroData->value = $request->value;
    
        $nuroData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'nuroData' => $nuroData
        ]);
    }
}
