<?php

namespace App\Http\Controllers\Appointments;

use App\Http\Controllers\Controller;
use App\Models\MhpAppointmentScheduler;
use App\Models\MhpBirthSex;
use App\Models\MhpPatient;
use App\Models\MhpStatus;
use Illuminate\Http\Request;
use App\Models\MhpOccupation;
use App\Models\MhpOccupationalHazards;
use App\Models\MhpDoctorsMaster;
use App\Models\MhpTobaccoType;
use App\Models\MhpCurrentSmokingHistory;
use App\Models\MhpTobaccoCostAmount;
use App\Models\MhpAdviceSuggestion;
use App\Models\MhpPastAlcoholConsumption;
use App\Models\MhpPatientsFamilySocialHistoryAlcohol;
use App\Models\MhpPatientsOccupationDetails;
use App\Models\MhpPatientsFamilySocialHistoryTobacco;
use App\Models\MhpPatientsVitalSign;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
class PatientsController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'patient_hn_number' => 'required',
            'patient_first_name' => 'required',
            'patient_mobile_phone' => 'required',
            'patient_birth_sex_id' => 'required',
            'patient_status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages());
        } else {

            if ($files = $request->file('image')) {
                $names = $files->getClientOriginalName();
                $name = rand(111, 99999) . $names;
                $files->move('images/files/', $name);
            } else {
                $name = "";
            }
            $patients = new MhpPatient();
            $patients->patient_hn_number = $request->patient_hn_number;
            $patients->patient_title_id = $request->patient_title_id;
            $patients->patient_first_name = $request->patient_first_name;
            $patients->patient_nid = $request->patient_nid;
            $patients->patient_bcid = $request->patient_bcid;
            $patients->ptn_blood_group_id = $request->ptn_blood_group_id;
            $patients->patient_last_name = $request->patient_last_name;
            $patients->patient_contact_via = $request->patient_contact_via;
            $patients->patient_mobile_phone = $request->patient_mobile_phone;
            $patients->patient_head_of_family = $request->patient_head_of_family;
            $patients->patient_emergency_contact = $request->patient_emergency_contact;
            $patients->patient_dob = $request->patient_dob;
            $patients->patient_email = $request->patient_email;
            $patients->patient_birth_sex_id = $request->patient_birth_sex_id;
            $patients->patient_individual_health_identifier_no = $request->patient_individual_health_identifier_no;
            $patients->patient_religion_id = $request->patient_religion_id;
            $patients->patient_usual_provider_id = $request->patient_usual_provider_id;
            $patients->patient_ethnicity_id = $request->patient_ethnicity_id;
            $patients->patient_parent_id = $request->patient_parent_id;
            $patients->patient_address1 = $request->patient_address1;
            $patients->patient_address2 = $request->patient_address2;
            $patients->patient_usual_visit_type_id = $request->patient_usual_visit_type_id;
            $patients->patient_usual_account = $request->patient_usual_account;
            $patients->patient_deceased_date = $request->patient_deceased_date;
            $patients->patient_next_of_kin = $request->patient_next_of_kin;
            $patients->patient_medical_record_no = $request->patient_medical_record_no;
            $patients->patient_city_id = $request->patient_city_id;
            $patients->patient_safety_net_no = $request->patient_safety_net_no;
            $patients->patient_postal_code = $request->patient_postal_code;
            $patients->patient_health_inc_fund = $request->patient_health_inc_fund;
            $patients->patient_health_inc_no = $request->patient_health_inc_no;
            $patients->patient_expire_date = $request->patient_expire_date;
            $patients->patient_medical_no = $request->patient_medical_no;
            $patients->patient_occupation_id = $request->patient_occupation_id;
            $patients->patient_hcc_no = $request->patient_hcc_no;
            $patients->patient_general_notes = $request->patient_general_notes;
            $patients->patient_appointment_notes = $request->patient_appointment_notes;

            $patients->patient_images = $name;

            $patients->patient_middle_name = $request->patient_middle_name;
            $patients->patient_preferred_name = $request->patient_preferred_name;
            $patients->patient_home_phone = $request->patient_home_phone;
            $patients->patient_work_phone = $request->patient_work_phone;
            $patients->patient_status = $request->patient_status;
            $patients->patient_state_id = $request->patient_state_id;
            $patients->patient_passport = $request->patient_passport;


            $patients->save();

            return response()->json([
                'status' => 200,
                'message' => 'Patients Added Successfully',
                'patients' => $patients
            ]);
        }
    }

    public function index()
    {
        $patients = MhpPatient::with('title', 'patient_birth_sex', 'statuses', 'usual_provider')->where('delete_status', 0)->orderBy('id', 'desc')->get();
        $statuses = MhpStatus::where('delete_status', 0)->get();
        $genders = MhpBirthSex::where('delete_status', 0)->get();
        return response()->json([
            'status' => 200,
            'patients' => $patients,
            'statuses' => $statuses,
            'genders' => $genders,
        ]);
    }

    public function destroy($id)
    {
        $occupational_hazards = MhpPatient::find($id);
        if ($occupational_hazards) {
            if ($occupational_hazards['delete_status'] == 0) {
                $delete_status = 1;
            } else {
                $delete_status = 0;
            }
            $occupational_hazards->delete_status = $delete_status;
            $occupational_hazards->save();
            return response()->json([
                'status' => 200,
                'message' => 'Patients deleted successfully',
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'No Patients Found',
            ]);
        }
    }

    public function edit($id)
    {
        $patient = MhpPatient::with('patient_birth_sex')->find($id);
        return response()->json([
            'status' => 200,
            'patient' => $patient,
        ]);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'patient_hn_number' => 'required',
            'patient_first_name' => 'required',
            'patient_last_name' => 'required',
            'patient_mobile_phone' => 'required',
            'patient_birth_sex_id' => 'required',
            'patient_status' => 'required',
            'patient_preferred_name' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages());
        }else{

             $patients = MhpPatient::find($id);

        if ($files = $request->file('image')) {
            $names = $files->getClientOriginalName();
            $name = rand(111, 99999) . $names;
            $files->move('images/files/', $name);
        }

        $patients->patient_hn_number = $request->patient_hn_number;
        $patients->patient_title_id = $request->patient_title_id;
        $patients->patient_first_name = $request->patient_first_name;
        $patients->patient_nid = $request->patient_nid;
        $patients->patient_bcid = $request->patient_bcid;
        $patients->ptn_blood_group_id = $request->ptn_blood_group_id;
        $patients->patient_last_name = $request->patient_last_name;
        $patients->patient_contact_via = $request->patient_contact_via;
        $patients->patient_mobile_phone = $request->patient_mobile_phone;
        $patients->patient_head_of_family = $request->patient_head_of_family;
        $patients->patient_emergency_contact = $request->patient_emergency_contact;
        $patients->patient_dob = $request->patient_dob;
        $patients->patient_email = $request->patient_email;
        $patients->patient_birth_sex_id = $request->patient_birth_sex_id;
        $patients->patient_individual_health_identifier_no = $request->patient_individual_health_identifier_no;
        $patients->patient_religion_id = $request->patient_religion_id;
        $patients->patient_usual_provider_id = $request->patient_usual_provider_id;
        $patients->patient_ethnicity_id = $request->patient_ethnicity_id;
        $patients->patient_parent_id = $request->patient_parent_id;
        $patients->patient_address1 = $request->patient_address1;
        $patients->patient_address2 = $request->patient_address2;
        $patients->patient_usual_visit_type_id = $request->patient_usual_visit_type_id;
        $patients->patient_usual_account = $request->patient_usual_account;
        $patients->patient_deceased_date = $request->patient_deceased_date;
        $patients->patient_next_of_kin = $request->patient_next_of_kin;
        $patients->patient_medical_record_no = $request->patient_medical_record_no;
        $patients->patient_city_id = $request->patient_city_id;
        $patients->patient_safety_net_no = $request->patient_safety_net_no;
        $patients->patient_postal_code = $request->patient_postal_code;
        $patients->patient_health_inc_fund = $request->patient_health_inc_fund;
        $patients->patient_health_inc_no = $request->patient_health_inc_no;
        $patients->patient_expire_date = $request->patient_expire_date;
        $patients->patient_medical_no = $request->patient_medical_no;
        $patients->patient_occupation_id = $request->patient_occupation_id;
        $patients->patient_hcc_no = $request->patient_hcc_no;
        $patients->patient_general_notes = $request->patient_general_notes;
        $patients->patient_appointment_notes = $request->patient_appointment_notes;
        if ($files != null) {
            $patients->patient_images = $name;
        }

        $patients->patient_middle_name = $request->patient_middle_name;
        $patients->patient_preferred_name = $request->patient_preferred_name;
        $patients->patient_home_phone = $request->patient_home_phone;
        $patients->patient_work_phone = $request->patient_work_phone;
        $patients->patient_status = $request->patient_status;
        $patients->patient_state_id = $request->patient_state_id;
        $patients->patient_passport = $request->patient_passport;


        $patients->save();
        return response()->json([
            'status' => 200,
            'message' => 'Patients Updated Successfully',
        ]);
        }



       
    }

    
    public function lactation_update(Request $request, $id)
    {
    //    return $request->all();
        $patients = MhpPatient::find($id);
        $patients->lactation = $request->lactation;
        $patients->save();
        return response()->json([
            'status' => 200,
            'message' => 'Patients Lactation Updated Successfully',
        ]);
    }
    
    public function search($name)
    {


        // $result = MhpPatient::where([
        //     ['id', '=', $name],
        //     ['delete_status', '=', 0]
        // ])
        // ->orWhere('patient_hn_number', 'LIKE', '%'. $name. '%')
        // ->orWhere('patient_mobile_phone', 'LIKE', '%'. $name. '%')
        // ->orWhere('patient_dob', 'LIKE', '%'. $name. '%')
        // ->get();

        $result = MhpPatient::where('id', $name)->where('delete_status', 0)
            ->orWhere('patient_hn_number', 'LIKE', '%' . $name . '%')
            ->orWhere('patient_mobile_phone', 'LIKE', '%' . $name . '%')
            ->orWhere('patient_dob', 'LIKE', '%' . $name . '%')
            ->get();
        if (count($result)) {
            return Response()->json($result);
        } else {
            return response()->json(['Result' => 'No Data not found'], 404);
        }
    }

    public function search_by_id($id)
    {
        $patient = MhpPatient::with('title', 'religion', 'ethnicity', 'occupation', 'contact_via', 'patient_birth_sex', 'statuses', 'city', 'state', 'usual_provider', 'usual_account', 'blood_group')
            ->where('delete_status', 0)
            ->where('id', $id)->first();

        $vital_signs = MhpPatientsVitalSign::where('patient_id', $id)->orderBy('id', 'desc')->get();
        return response()->json([
            'status' => 200,
            'patient' => $patient,
            'vital_signs' => $vital_signs
        ]);
    }

    public function patients_family_social($id)
    {

        $alcohols = MhpPatientsFamilySocialHistoryAlcohol::where('patients_id', $id)->first();
        $occupation_details = MhpPatientsOccupationDetails::where('patients_id', $id)->first();
        $social_tobacco = MhpPatientsFamilySocialHistoryTobacco::where('patients_id', $id)->first();

        return response()->json([
            'status' => 200,
            'alcohols' => $alcohols,
            'occupation_details' => $occupation_details,
            'social_tobacco' => $social_tobacco,
        ]);
    }

    public function Add_family_details(Request $request, $id)
    {
        $alcohle = new MhpPatientsFamilySocialHistoryAlcohol();
        $alcohle->patients_id = $id;
        $alcohle->is_drinker = $request->is_drinker;
        $alcohle->days_per_week = $request->days_per_week;
        $alcohle->standard_drinks_per_day = $request->standard_drinks_per_day;
        $alcohle->past_alc_consumption = $request->past_alc_consumption;
        $alcohle->year_started = $request->year_started;
        $alcohle->year_stopped = $request->year_stopped;
        $alcohle->comments = $request->comments;
        $alcohle->save();

        $tobaco = new MhpPatientsFamilySocialHistoryTobacco();
        $tobaco->patients_id = $id;
        $tobaco->current_smoking_history = $request->current_smoking_history;
        $tobaco->tobacco_year_started = $request->tobacco_year_started;
        $tobaco->tobacco_year_stopped = $request->tobacco_year_stopped;
        $tobaco->is_fresho_leaf = $request->is_fresho_leaf;
        $tobaco->amount_per_day = $request->amount_per_day;
        $tobaco->is_cessation_advice = $request->is_cessation_advice;
        $tobaco->advice_suggestion = $request->advice_suggestion;
        $tobaco->comments_tobacco = $request->comments_tobacco;
        $tobaco->save();

        $ocupation = new MhpPatientsOccupationDetails();
        $ocupation->patients_id = $id;
        $ocupation->occupation_id = $request->occupation_id;
        $ocupation->occupation_details = $request->occupation_details;
        $ocupation->employee_id = $request->employee_id;
        $ocupation->year_commented = $request->year_commented;
        $ocupation->year_ceased = $request->year_ceased;
        $ocupation->occupational_hazards_exposer = $request->occupational_hazards_exposer;
        $ocupation->extra_details = $request->extra_details;

        $ocupation->save();


        return response()->json([
            'status' => 200,
            'message' => 'Additional Details Saved Successfully',
            'res' => $alcohle
        ]);
    }

    public function Update_family_details(Request $request, $id)
    {
        $alcohle = MhpPatientsFamilySocialHistoryAlcohol::where('id', $request->alcohol_id)->first();
        $alcohle->patients_id = $id;
        $alcohle->is_drinker = $request->is_drinker;
        $alcohle->days_per_week = $request->days_per_week;
        $alcohle->standard_drinks_per_day = $request->standard_drinks_per_day;
        $alcohle->past_alc_consumption = $request->past_alc_consumption;
        $alcohle->year_started = $request->year_started;
        $alcohle->year_stopped = $request->year_stopped;
        $alcohle->comments = $request->comments;
        $alcohle->update();

        $tobaco = MhpPatientsFamilySocialHistoryTobacco::where('id', $request->Ocu_id)->first();
        $tobaco->patients_id = $id;
        $tobaco->current_smoking_history = $request->current_smoking_history;
        $tobaco->tobacco_year_started = $request->tobacco_year_started;
        $tobaco->tobacco_year_stopped = $request->tobacco_year_stopped;
        $tobaco->is_fresho_leaf = $request->is_fresho_leaf;
        $tobaco->amount_per_day = $request->amount_per_day;
        $tobaco->is_cessation_advice = $request->is_cessation_advice;
        $tobaco->advice_suggestion = $request->advice_suggestion;
        $tobaco->comments_tobacco = $request->comments_tobacco;
        $tobaco->update();

        $ocupation = MhpPatientsOccupationDetails::where('id', $request->tabaco_id)->first();
        $ocupation->patients_id = $id;
        $ocupation->occupation_id = $request->occupation_id;
        $ocupation->occupation_details = $request->occupation_details;
        $ocupation->employee_id = $request->employee_id;
        $ocupation->year_commented = $request->year_commented;
        $ocupation->year_ceased = $request->year_ceased;
        $ocupation->occupational_hazards_exposer = $request->occupational_hazards_exposer;
        $ocupation->extra_details = $request->extra_details;

        $ocupation->update();


        return response()->json([
            'status' => 200,
            'message' => 'Additional Details Update Successfully',
            'dataPa' => $alcohle
        ]);
    }

    public function patients_additional_dropdown()
    {
        $occupation = MhpOccupation::where('delete_status', 0)->get();
        $doctors = MhpDoctorsMaster::where('delete_status', 0)->get();
        $occupationalhazards = MhpOccupationalHazards::where('delete_status', 0)->get();
        $currentsmokinghistory = MhpCurrentSmokingHistory::where('delete_status', 0)->get();
        $tobaccotype = MhpTobaccoType::where('delete_status', 0)->get();
        $tobaccoamountcost = MhpTobaccoCostAmount::where('delete_status', 0)->get();
        $advicesuggestion = MhpAdviceSuggestion::where('delete_status', 0)->get();
        $pastalcconsumption = MhpPastAlcoholConsumption::where('delete_status', 0)->get();

        return response()->json([
            'status' => 200,
            'occupation' => $occupation,
            'doctors' => $doctors,
            'occupationalhazards' => $occupationalhazards,
            'currentsmokinghistory' => $currentsmokinghistory,
            'tobaccotype' => $tobaccotype,
            'tobaccoamountcost' => $tobaccoamountcost,
            'advicesuggestion' => $advicesuggestion,
            'pastalcconsumption' => $pastalcconsumption,
        ]);
    }

    public function patients_profile($id)
    {
        $patients_details = MhpPatient::with('title', 'religion', 'ethnicity', 'occupation', 'contact_via', 'patient_birth_sex', 'statuses', 'city', 'state', 'usual_provider', 'usual_account', 'blood_group', 'vital_sign')->where('id', $id)->first();
        $appointments = MhpAppointmentScheduler::with('doctors')->where('patient_id', $id)->get();
        return response()->json([
            'status' => 200,
            'patients_details' =>  $patients_details,
            'appointments' =>  $appointments,
        ]);
    }

    public function update_img(Request $request, $id)
    {

        $patients = MhpPatient::find($id);

        if ($files = $request->file('image')) {
            $names = $files->getClientOriginalName();
            $name = rand(111, 99999) . $names;
            $files->move('images/files/', $name);
        }
        $patients->patient_images = $name;

        $patients->save();
        return response()->json([
            'status' => 200,
            'message' => 'Patients Image Updated Successfully',
        ]);
    }

    //mobile api patient profile function


    // public function getProfile($id){

    //     $patientProfile=DB::table('mhp_patients')->leftJoin('mhp_usual_providers','mhp_patients.patient_usual_provider_id','=','mhp_usual_providers.id')->where('mhp_patients.id',$id)->where('mhp_patients.delete_status',0)->first();
    //     // dd($patientProfile);
    //     return response()->json([
    //         'status' => 200,
    //         'patientProfile' => $patientProfile,
    //     ]);
    // }

    //mobile api patient search function

    public function getALlPatient($id)
    {

        $search_patients = DB::table('mhp_patients')->where('patient_hn_number', 'LIKE', '%' . $id . '%')->orWhere('patient_title_id', 'LIKE', '%' . $id . '%')->orWhere('patient_nid', 'LIKE', '%' . $id . '%')->orWhere('patient_first_name', 'LIKE', '%' . $id . '%')->orWhere('patient_middle_name', 'LIKE', '%' . $id . '%')->orWhere('patient_last_name', 'LIKE', '%' . $id . '%')->orWhere('patient_mobile_phone', 'LIKE', '%' . $id . '%')->orWhere('patient_email', 'LIKE', '%' . $id . '%')->orWhere('patient_health_inc_no', 'LIKE', '%' . $id . '%')->orWhere('patient_medical_no', 'LIKE', '%' . $id . '%')->orWhere('patient_hcc_no', 'LIKE', '%' . $id . '%')->get();

        return response()->json([
            'status' => 200,
            'search_patients' => $search_patients,
        ]);
    }



    public function search_by_phone_or_hin(Request $request,$id){

         $patient = MhpPatient::with('title', 'religion', 'ethnicity', 'occupation', 'contact_via', 'patient_birth_sex', 'statuses', 'city', 'state', 'usual_provider', 'usual_account', 'blood_group')->where('patient_hn_number', 'LIKE', '%' .$id .'%')->orWhere('patient_mobile_phone',$id)->orWhere('patient_home_phone','LIKE', '%' .$id. '%')->where('delete_status', 0)->first();


                 $checkNow=date("Y-m-d");
            // $checkUpdate=(date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));

            


    $todaysAppointment=MhpAppointmentScheduler::where('patient_id',$patient->id)->where('StartTime','LIKE', '%'.$checkNow.'%')
               ->where('delete_status', 0)->get();


            return response()->json([
                    'status'=>200,
                    'data'=>'found',
                    'patient' => $patient,
                    // 'patient_id'=>$patient->id,
                    'todaysPatientAppointments'=>$todaysAppointment,
                ]);                 

    }

  
}
