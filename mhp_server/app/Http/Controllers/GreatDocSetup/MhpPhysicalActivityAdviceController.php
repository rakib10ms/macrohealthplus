<?php

namespace App\Http\Controllers\GreatDocSetup;

use App\Http\Controllers\Controller;
use App\Models\MhpPhysicalActivityAdvice;
use App\Models\MhpPhysicalActivityAerobicExercise;
use App\Models\MhpPhysicalActivityStrengthBuilding;
use App\Models\MhpPhysicalActivityEndurance;
use Illuminate\Http\Request;

class MhpPhysicalActivityAdviceController extends Controller
{
    //
    public function store(Request $request)
    {
        $physicalActivityAdvice = new MhpPhysicalActivityAdvice();
        $physicalActivityAdvice->patient_id = $request->patient_id;
        $physicalActivityAdvice->balance__training__ternary = $request->balance__training__ternary;
        $physicalActivityAdvice->flexibility__exercise__ternary = $request->flexibility__exercise__ternary;
        $physicalActivityAdvice->moderate__intensity__exercise__ternary = $request->moderate__intensity__exercise__ternary;
        $physicalActivityAdvice->frequency__value = $request->frequency__value;
        $physicalActivityAdvice->previews__date = $request->previews__date;
        $physicalActivityAdvice->save();

        return response()->json([
            'status' => 200,
            'message' => 'Physical Activity Advice data Inserted Successfully',
            'physicalActivityAdvice' => $physicalActivityAdvice
        ]);
    }


    public function save__physical__aerobic__exercise(Request $request) 
    {
        // return $request->all();
        $aerobicExercise = new MhpPhysicalActivityAerobicExercise();
        $aerobicExercise->patient_id = $request->patient_id;
        $aerobicExercise->physical_activity_advice_id = $request->physical_activity_advice_id;
        $aerobicExercise->aerobicExercise_id = $request->aerobicExercise_id;
        $aerobicExercise->value = $request->value;

        $aerobicExercise->save();

        return response()->json([
            'status' => 200,
            'message' => 'Aerobic Exercise Inserted Successfully',
            'aerobicExercise' => $aerobicExercise
        ]);
     
    }
    
    public function save__physical__strength__building(Request $request) 
    {
        // return $request->all();
        $strengthBuilding = new MhpPhysicalActivityStrengthBuilding();
        $strengthBuilding->patient_id = $request->patient_id;
        $strengthBuilding->physical_activity_advice_id = $request->physical_activity_advice_id;
        $strengthBuilding->strengthBuilding_id = $request->strengthBuilding_id;
        $strengthBuilding->value = $request->value;

        $strengthBuilding->save();

        return response()->json([
            'status' => 200,
            'message' => 'Strength Building Inserted Successfully',
            'strengthBuilding' => $strengthBuilding
        ]);
     
    }
    
    public function save__physical__endurance(Request $request) 
    {
        // return $request->all();
        $endurance = new MhpPhysicalActivityEndurance();
        $endurance->patient_id = $request->patient_id;
        $endurance->physical_activity_advice_id = $request->physical_activity_advice_id;
        $endurance->endurance_id = $request->endurance_id;
        $endurance->value = $request->value;

        $endurance->save();

        return response()->json([
            'status' => 200,
            'message' => 'Endurance Inserted Successfully',
            'endurance' => $endurance
        ]);
     
    }



}
