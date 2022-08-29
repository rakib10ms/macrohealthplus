<?php

namespace App\Http\Controllers;

use App\Models\MhpMusculoSketalCarvicalSpineHistory;
use App\Models\MhpMusculoSketalCarvicalSpineMomement1;
use App\Models\MhpMusculoSketalCarvicalSpineMovement2nd;
use App\Models\MhpMusculoSketalCarvicalSpineTendernesOverFactJoin;
use App\Models\MhpMusculoSketalCarvicalSpineTendernesOverSpinus;
use App\Models\MhpMusculoSketalHipAndPelvis;
use App\Models\MhpMusculoSketalHipAndPelvisTest;
use App\Models\MhpMusculoSketalShoulder;
use App\Models\MhpMusculoSketalShoulderAnteriorView;
use App\Models\MhpMusculoSketalShoulderResistedMovement;
use App\Models\MhpMusculoSketalShoulderShapCounter;
use App\Models\MhpMusculoSketalThoracoLumberSpine;
use App\Models\MhpMusculoSketalThoracoLumberSpineTenderNessOver;
use App\Models\MhpMusculoSketalThoracoLumberSpineTenderNessOverL1;
use App\Models\MhpMusculoSketalThoracoLumberSpineTenderOver;
use App\Models\MhpMusculoSketalThoracoLumberSpineTenderOverL1ToL6;
use App\Models\MusculoSketalCarvicalSpine;
use Illuminate\Http\Request;

class MhpMusculoSketalExamiController extends Controller
{
    public function store(Request $request)
    {
        $mse = new MusculoSketalCarvicalSpine();
        $mse->patient_id = $request->patient_id;
        $mse->posture = $request->posture;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function history_store(Request $request)
    {
        $mse = new MhpMusculoSketalCarvicalSpineHistory();

        $mse->patient_id = $request->patient_id;
        $mse->carvical_spine_id = $request->carvical_spine_id;
        $mse->history_id = $request->history_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function movement_1st_store(Request $request)
    {
        $mse = new MhpMusculoSketalCarvicalSpineMomement1();

        $mse->patient_id = $request->patient_id;
        $mse->carvical_spine_id = $request->carvical_spine_id;
        $mse->momement1s_id = $request->momement1s_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function movement_2nd_store(Request $request)
    {
        $mse = new MhpMusculoSketalCarvicalSpineMovement2nd();

        $mse->patient_id = $request->patient_id;
        $mse->carvical_spine_id = $request->carvical_spine_id;
        $mse->momement_id = $request->momement_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function tedernes_over_spinus_store(Request $request)
    {
        $mse = new MhpMusculoSketalCarvicalSpineTendernesOverSpinus();

        $mse->patient_id = $request->patient_id;
        $mse->carvical_spine_id = $request->carvical_spine_id;
        $mse->tendernes_over_spinuses_id = $request->tendernes_over_spinuses_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function tedernes_over_fact_store(Request $request)
    {
        $mse = new MhpMusculoSketalCarvicalSpineTendernesOverFactJoin();

        $mse->patient_id = $request->patient_id;
        $mse->carvical_spine_id = $request->carvical_spine_id;
        $mse->side = $request->side;
        $mse->tendernes_over_fact_joins_id = $request->tendernes_over_fact_joins_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function thoracal_lumber_spine_store(Request $request)
    {
        // return $request->all();
        $mse = new MhpMusculoSketalThoracoLumberSpine();

        $mse->patient_id = $request->patient_id;
        $mse->inspection_look_value = $request->inspection_look_value;
        $mse->sudden_anaesthesia_value = $request->sudden_anaesthesia_value;
        $mse->thoracic_kyphosis_value = $request->thoracic_kyphosis_value;
        $mse->lumber_lordosis_value = $request->lumber_lordosis_value;
        $mse->spine_value = $request->spine_value;
        $mse->pain_along_value = $request->pain_along_value;
        $mse->pain_over_value = $request->pain_over_value;
        $mse->slum_test_ternary = $request->slum_test_ternary;
        $mse->pain_into_knee_value = $request->pain_into_knee_value;
        $mse->walk_on_value = $request->walk_on_value;
        $mse->tenderness_over_thoraco_side = $request->tenderness_over_thoraco_side;
        $mse->lateral_flexion_side = $request->lateral_flexion_side;
        $mse->forward_ternsry = $request->forward_ternsry;
        $mse->extension_ternary = $request->extension_ternary;
        $mse->slJoint_side = $request->slJoint_side;
        $mse->hip_joint_line_side = $request->hip_joint_line_side;
        $mse->valsalva_PN_ternary = $request->valsalva_PN_ternary;
        $mse->straight_leg_raising_ternary = $request->straight_leg_raising_ternary;
        $mse->femoral_stretch_PN_ternary = $request->femoral_stretch_PN_ternary;
        $mse->hoover_test_PN_ternary = $request->hoover_test_PN_ternary;
        $mse->gaenslens_sign_PN_ternary = $request->gaenslens_sign_PN_ternary;
        $mse->patrick_bucket_PN_ternary = $request->patrick_bucket_PN_ternary;
        $mse->quadrant_PN_ternary = $request->quadrant_PN_ternary;
        $mse->trendelenburg_PN_ternary = $request->trendelenburg_PN_ternary;
        $mse->spondylosis_PN_ternary = $request->spondylosis_PN_ternary;
        $mse->hip_flexion_value = $request->hip_flexion_value;
        $mse->resisted_value = $request->resisted_value;
        $mse->dorsiflexion_value = $request->dorsiflexion_value;
        $mse->extend_value = $request->extend_value;
        $mse->l1_value = $request->l1_value;
        $mse->l3Area_value = $request->l3Area_value;
        $mse->l4Area_value = $request->l4Area_value;
        $mse->l5Area_value = $request->l5Area_value;
        $mse->planter_flexion_value = $request->planter_flexion_value;
        $mse->s1_area_value = $request->s1_area_value;
        $mse->s4_supply_value = $request->s4_supply_value;
        $mse->Shober_test = $request->Shober_test;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function thoracal_lumber_spine_tender_over_store(Request $request)
    {
        $mse = new MhpMusculoSketalThoracoLumberSpineTenderOver();
        $mse->patient_id = $request->patient_id;
        $mse->thoraco_lumber_spine_id = $request->thoraco_lumber_spine_id;
        $mse->tender_over_id = $request->tender_over_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function thoracal_lumber_spine_tender_over_L1_L6_store(Request $request)
    {
        $mse = new MhpMusculoSketalThoracoLumberSpineTenderOverL1ToL6();
        $mse->patient_id = $request->patient_id;
        $mse->thoraco_lumber_spine_id = $request->thoraco_lumber_spine_id;
        $mse->tender_over_l1_to_l6_id = $request->tender_over_l1_to_l6_id;
        $mse->value = $request->value;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function thoracal_lumber_spine_tender_ness_over_store(Request $request)
    {
        $mse = new MhpMusculoSketalThoracoLumberSpineTenderNessOver();
        $mse->patient_id = $request->patient_id;
        $mse->thoraco_lumber_spine_id = $request->thoraco_lumber_spine_id;
        $mse->tenderness_over_side = $request->tenderness_over_side;
        $mse->tenderness_over_id = $request->tenderness_over_id;
        $mse->value = $request->value;

        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function thoracal_lumber_spine_tender_ness_over_L1_L6_store(Request $request)
    {
        $mse = new MhpMusculoSketalThoracoLumberSpineTenderNessOverL1();
        $mse->patient_id = $request->patient_id;
        $mse->thoraco_lumber_spine_id = $request->thoraco_lumber_spine_id;
        $mse->tenderness_over_l1_id = $request->tenderness_over_l1_id;
        $mse->value = $request->value;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function hipAndPelvis_store(Request $request)
    {
        $mse = new MhpMusculoSketalHipAndPelvis();
        $mse->patient_id = $request->patient_id;
        $mse->hip_ternary = $request->hip_ternary;
        $mse->sacroIliac_PN_ternary = $request->sacroIliac_PN_ternary;
        $mse->ortolani_PN_ternary = $request->ortolani_PN_ternary;
        $mse->inspection_look_value = $request->inspection_look_value;
        $mse->thomas_test_PN_ternary = $request->thomas_test_PN_ternary;
        $mse->hipJoint_compression_PN_ternary = $request->hipJoint_compression_PN_ternary;
        $mse->ober_test_PN_ternary = $request->ober_test_PN_ternary;
        $mse->gait_value = $request->gait_value;
        $mse->patrick_PN_ternary = $request->patrick_PN_ternary;
        $mse->piriformis_PN_ternary = $request->piriformis_PN_ternary;
        $mse->ely_test_PN_ternary = $request->ely_test_PN_ternary;
        $mse->hip_jointtenderness_PA_ternary = $request->hip_jointtenderness_PA_ternary;
        $mse->greater_trochanter_LR_ternary = $request->greater_trochanter_LR_ternary;
        $mse->gluteus_medius_PA_ternary = $request->gluteus_medius_PA_ternary;
        $mse->trochanteric_bursi_PA_ternary = $request->trochanteric_bursi_PA_ternary;
        $mse->flexion135 = $request->flexion135;
        $mse->abduction50 = $request->abduction50;
        $mse->InternalRotation45 = $request->InternalRotation45;
        $mse->Extension20 = $request->Extension20;
        $mse->Adduction45 = $request->Adduction45;
        $mse->alRotation45 = $request->alRotation45;
        $mse->trueLegLengthLeft = $request->trueLegLengthLeft;
        $mse->trueLegLengthRight = $request->trueLegLengthRight;
        $mse->ApparentLegLengthLeft = $request->ApparentLegLengthLeft;
        $mse->ApparentLegLengthRight = $request->ApparentLegLengthRight;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function hipAndPelvis_test_store(Request $request)
    {
        $mse = new MhpMusculoSketalHipAndPelvisTest();
        $mse->patient_id = $request->patient_id;
        $mse->hip_and_pelvis_id = $request->hip_and_pelvis_id;
        $mse->test_id = $request->test_id;
        $mse->value = $request->value;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function shoulder_store(Request $request)
    {
        $mse = new MhpMusculoSketalShoulder();
        $mse->patient_id = $request->patient_id;
         $mse->shoulder_LR_ternary = $request->shoulder_LR_ternary;
         $mse->level_of_spine_value= $request->level_of_spine_value;
         $mse->winged_scapula_value= $request->winged_scapula_value;
         $mse->sternum_ternary_value= $request->sternum_ternary_value;
         $mse->coracoid_process_ternary_value= $request->coracoid_process_ternary_value;
         $mse->scapula_ternary_value= $request->scapula_ternary_value;
         $mse->axillary_ternary_value= $request->axillary_ternary_value;
         $mse->ac_joint_ternary_value= $request->ac_joint_ternary_value;
         $mse->joint_margin_ternary_value= $request->joint_margin_ternary_value;
         $mse->infraspinatus_ternary_value= $request->infraspinatus_ternary_value;
         $mse->subacromial_ternary_value= $request->subacromial_ternary_value;
         $mse->spineof_scapula_ternary_value= $request->spineof_scapula_ternary_value;
         $mse->supra_spinatus_ternary_value= $request->supra_spinatus_ternary_value;
         $mse->painful_arc_value= $request->painful_arc_value;
         $mse->resistedMovementside= $request->resistedMovementside;
         $mse->acromioclavicular_PN_ternary= $request->acromioclavicular_PN_ternary;
         $mse->scapular_assistance_PN_ternary= $request->scapular_assistance_PN_ternary;
         $mse->lateral_slide_PN_ternary= $request->lateral_slide_PN_ternary;
         $mse->impigement_neer_PN_ternary= $request->impigement_neer_PN_ternary;
         $mse->impigement_hawkinskennedy_PN_ternary= $request->impigement_hawkinskennedy_PN_ternary;
         $mse->instability_load_shift_PN_ternary= $request->instability_load_shift_PN_ternary;
         $mse->instability_apprehension_PN_ternary= $request->instability_apprehension_PN_ternary;
         $mse->inferior_sulcus_sign_PN_ternary= $request->inferior_sulcus_sign_PN_ternary;
         $mse->superiorLabralAnterior= $request->superiorLabralAnterior;
         $mse->SLAPLeison_obriens_PN_ternary= $request->SLAPLeison_obriens_PN_ternary;
         $mse->specific_palpation_PN_ternary= $request->specific_palpation_PN_ternary;
         $mse->upper_limb_euro_dynamic_PN_ternary= $request->upper_limb_euro_dynamic_PN_ternary;
         $mse->abduction50= $request->abduction50;
         $mse->abduction170= $request->abduction170;
         $mse->Flexion160= $request->Flexion160;
         $mse->Extension50= $request->Extension50;
         $mse->LateralRotation80= $request->LateralRotation80;
         $mse->MedialRotation= $request->MedialRotation;
         $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function shap_counter_store(Request $request)
    {
        $mse = new MhpMusculoSketalShoulderShapCounter();
        $mse->patient_id = $request->patient_id;
        $mse->shoulder_id = $request->shoulder_id;
        $mse->shap_counter_id = $request->shap_counter_id;
        $mse->value = $request->value;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

    public function anterior_store(Request $request)
    {
        $mse = new MhpMusculoSketalShoulderAnteriorView();
        $mse->patient_id = $request->patient_id;
        $mse->shoulder_id = $request->shoulder_id;
        $mse->anterior_view_id = $request->anterior_view_id;
        $mse->value = $request->value;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }


    public function resisted_movement_store(Request $request)
    {
        $mse = new MhpMusculoSketalShoulderResistedMovement();
        $mse->patient_id = $request->patient_id;
        $mse->shoulder_id = $request->shoulder_id;
        $mse->resisted_movement_id = $request->resisted_movement_id;
        $mse->value = $request->value;
        $mse->save();

        return response()->json([
            'status' => 200,
            'message' => 'Data Inserted Successfully',
            'mse' => $mse
        ]);
    }

   

}
