<?php

namespace App\Http\Controllers\Appointments;

use App\Http\Controllers\Controller;
use App\Models\MhpAppointmentScheduler;
use App\Models\MhpTimeSetup;
use App\Models\MhpDoctorsMaster;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Auth;
use DateTime;
use DateTimeZone;
use Illuminate\Support\Carbon as SupportCarbon;
use Illuminate\Support\Facades\Auth as FacadesAuth;

class SchedulerController extends Controller
{
    //
    public function save_scheduler(Request $request)
    {
       
        // return $request->all();

    //     Carbon::createFromFormat('Y-m-d H:i:s', $some_date, 'UTC')
    // ->setTimezone('America/Los_Angeles')

        $patientData = new MhpAppointmentScheduler();
        $patientData->patient_name = $request->patient_name;
        $patientData->doctors_id = $request->doctors_id;
        $patientData->patient_id = $request->patient_id;
        $patientData->patient_mobile = $request->patient_mobile;
        $patientData->notes = $request->notes;
        $patientData->StartTime = date('Y-m-d H:i:s', strtotime($request->StartTime . ' + 6 hours'));
        $patientData->EndTime = date('Y-m-d H:i:s', strtotime($request->EndTime . ' + 6 hours'));
        $patientData->Subject = $request->Subject;
        $patientData->status_color = $request->statusColor;
        // if ( $request->patient_id != null){        
        //     $patientData->status_color = "#e6f2e9";
        // }
        $patientData->save();
        return response()->json([
            'status' => 200,
            'message' => 'Scheduler Added Successfully',
            'saveData' => $patientData

        ]);
    }

    public function update_shedule_data(Request $request, $id)
    {
        //        return $request->all();

        $patientData = MhpAppointmentScheduler::find($id);
        $patientData->patient_name = $request->patient_name;
        $patientData->patient_id = $request->patientID;
        $patientData->doctors_id = $request->doctors_id;
        $patientData->patient_mobile = $request->patient_mobile;
        $patientData->notes = $request->notes;
        $patientData->StartTime = date('Y-m-d H:i:s', strtotime($request->StartTime . ' + 6 hours'));
        $patientData->EndTime = date('Y-m-d H:i:s', strtotime($request->EndTime . ' + 6 hours'));
        $patientData->Subject = $request->Subject;
        $patientData->status_color = $request->CategoryColor;
        $patientData->status_name = $request->statusName;

        $patientData->update();

        return response()->json([
            'status' => 200,
            'message' => 'Scheduler Update Successfully',
            'updatedData' => $patientData

        ]);
    }

    public function delete_shedule_data($id)
    {
        //        return $request->all();

        $patientData = MhpAppointmentScheduler::find($id);
        $patientData->delete_status = 1;
        $patientData->save();

        return response()->json([
            'status' => 200,
            'message' => 'Scheduler Soft Delete Successfully',
            'updatedData' => $patientData

        ]);
    }




    public function scheduler()
    {
        $schedule = MhpAppointmentScheduler::where('delete_status', 0)->get();
        return response()->json([
            'scheduleData' => $schedule
        ]);
    }

    public function GDPatientAppointmentToday($docId)
    {
        $result = MhpAppointmentScheduler::where('patient_id', '!=', 'null')
            ->where('status_name', '!=', 'null')
            ->Where('status_name', '!=', 'notattend')
            ->where('status_name', '!=', 'Unavilable')
            ->with('patients')->where('doctors_id', $docId)->where('delete_status', 0)
            ->where('StartTime', 'LIKE', '%' . date("Y-m-d") . '%')
            ->orderBy('StartTime', 'ASC')
            ->get();

        return response()->json([
            'status' => 200,
            'message' => 'Todays Appointments',
            'GDPatientAppointmentToday' => $result

        ]);
    }

    public function GDPatientAppointmentUpcommig($id)
    {

        $todaysDate = date("Y-m-d");

        $upto1days = date('Y-m-d', strtotime($todaysDate . ' + 24 hours'));

        $upto2days = date('Y-m-d', strtotime($todaysDate . ' + 2 days'));
        $upto3days = date('Y-m-d', strtotime($todaysDate . ' + 3 days'));

        $result = MhpAppointmentScheduler::with('patients')
            ->where('StartTime', 'LIKE', '%' . $upto1days . '%')
            ->orwhere('StartTime', 'LIKE', '%' . $upto2days . '%')
            ->orwhere('StartTime', 'LIKE', '%' . $upto3days . '%')
            ->where('delete_status', 0)
            ->where('doctors_id', $id)
            ->orderBy('StartTime', 'ASC')
            ->get();

        // $result = MhpAppointmentScheduler::with('patients')
        // ->where('StartTime', 'LIKE', '%' . $checkUpdate . '%')
        // ->orwhere('StartTime', '<=', '%' . $upto3days . '%')
        // ->where('doctors_id', $id)->where('delete_status', 0)
        // ->orderBy('StartTime', 'ASC')->get();

        return response()->json([
            'status' => 200,
            'message' => 'Upcoming Appointments',
            'upcomingAppointments' => $result

        ]);
    }

    //billing functions start 

    public function billingPatient()
    {
        $checkNow = date("Y-m-d");
        $checkUpdate = (date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));

        $billingPatients = DB::table('mhp_appointment_schedulers')->join('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')->join('mhp_birth_sexes', 'mhp_birth_sexes.id', '=', 'mhp_patients.patient_birth_sex_id')->where('mhp_appointment_schedulers.StartTime', 'LIKE', '%' . $checkNow . '%')->where('mhp_appointment_schedulers.delete_status', 0)->get();

        return response()->json([
            'status' => 200,
            'billingPatients' =>  $billingPatients
        ]);
    }


    public function  billingPatientSearch($id)
    {
        $billing_patientDetails = DB::table('mhp_patients')->where('id', $id)->select('*')->first();
        // dd($billing_patientDetails);
        return response()->json([
            'status' => 200,
            'billing_patientDetails' => $billing_patientDetails
        ]);
    }



    public function upcomingDrAppointment($id)
    {

        $checkNow = date("Y-m-d");
        // $checkUpdate=(date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));

        $result = MhpAppointmentScheduler::where('StartTime', '>', $checkNow)->where('doctors_id', $id)->count();

        return response()->json([
            'status' => 200,
            'totalUpcomingAppointment' => $result

        ]);
    }

    public function doctorTotalPatients($id)
    {


        $totalPatients = MhpAppointmentScheduler::where('doctors_id', $id)->where('delete_status', 0)->distinct('patient_id')->count('patient_id');
        return response()->json([
            'status' => 200,
            'totalPatients' => $totalPatients

        ]);
    }




    ///////////////////////////////mobile api///////////////////////////////


    //appointment api doctor site
    public function todaysDoctorAppointment($id)
    {
        $checkNow = date("Y-m-d");
        $checkUpdate = (date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));


        $result = DB::table('mhp_appointment_schedulers')->leftJoin('mhp_doctors_masters', 'mhp_doctors_masters.id', '=', 'mhp_appointment_schedulers.doctors_id')->leftJoin('doc_specialists', 'mhp_doctors_masters.specialists_id', '=', 'doc_specialists.id')->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')->leftJoin('mhp_media_type_onlines', 'mhp_media_type_onlines.id', '=', 'mhp_appointment_schedulers.mediaType_online')->where('mhp_appointment_schedulers.StartTime', 'LIKE', '%' . $checkUpdate . '%')->where('mhp_appointment_schedulers.doctors_id', $id)->where('mhp_appointment_schedulers.delete_status', 0)->select('mhp_appointment_schedulers.*', 'mhp_doctors_masters.*', 'mhp_patients.*', 'mhp_media_type_onlines.name as media_typeOnline_name', 'mhp_media_type_onlines.media_link as media_link')->get();


        $totalTodaysAppointment = MhpAppointmentScheduler::where('StartTime', 'LIKE', '%' . $checkUpdate . '%')->where('doctors_id', $id)->where('mhp_appointment_schedulers.delete_status', 0)->count();


        return response()->json([
            'status' => 200,
            'message' => 'Todays Doctor Appointments',
            'todaysDoctorAppointments' => $result,
            'totalTodaysAppointment' => $totalTodaysAppointment,

        ]);
    }

    public function upcomingDoctorAppointment($id, $date)
    {


        $checkNow = $date;
        $checkUpdate = (date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));


        $result = DB::table('mhp_appointment_schedulers')->leftJoin('mhp_doctors_masters', 'mhp_doctors_masters.id', '=', 'mhp_appointment_schedulers.doctors_id')->leftJoin('doc_specialists', 'mhp_doctors_masters.specialists_id', '=', 'doc_specialists.id')->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')->leftJoin('mhp_media_type_onlines', 'mhp_media_type_onlines.id', '=', 'mhp_appointment_schedulers.mediaType_online')->where('mhp_appointment_schedulers.StartTime', 'LIKE', '%' . $checkUpdate . '%')->where('mhp_appointment_schedulers.doctors_id', $id)->where('mhp_appointment_schedulers.delete_status', 0)->select('mhp_appointment_schedulers.*', 'mhp_doctors_masters.*', 'mhp_patients.*', 'mhp_media_type_onlines.name as media_typeOnline_name')->get();



        return response()->json([
            'status' => 200,
            'message' => 'Upcoming Doctor Appointments',
            'upcomingDoctorAppointments' => $result

        ]);
    }



    public function alldoctorList()
    {
        $allDoctors = DB::table('mhp_doctors_masters')->where('delete_status', 0)->get();

        return response()->json(['status' => 200, 'allDoctors' => $allDoctors]);
    }


    //appointment api patient site 
    public function completedPatientAppointment($id)
    {
        $checkNow = date("Y-m-d");
        $checkUpdate = (date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));


        $result = DB::table('mhp_appointment_schedulers')->leftJoin('mhp_doctors_masters', 'mhp_doctors_masters.id', '=', 'mhp_appointment_schedulers.doctors_id')->leftJoin('doc_specialists', 'mhp_doctors_masters.specialists_id', '=', 'doc_specialists.id')->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')->leftJoin('mhp_media_type_onlines', 'mhp_media_type_onlines.id', '=', 'mhp_appointment_schedulers.mediaType_online')->where('mhp_appointment_schedulers.StartTime', '<', $checkUpdate)->where('mhp_appointment_schedulers.patient_id', $id)->where('mhp_appointment_schedulers.delete_status', 0)->select('mhp_appointment_schedulers.*', 'mhp_doctors_masters.*', 'mhp_patients.*', 'mhp_media_type_onlines.name as media_typeOnline_name')->get();


        $totalCompletedLists = MhpAppointmentScheduler::where('patient_id', $id)->where('StartTime', '<', $checkUpdate)->where('delete_status', 0)->count();

        return response()->json([
            'status' => 200,
            'message' => 'Completed Patient Appointments',
            'completedPatientAppointments' => $result,
            'totalCompletedLists' => $totalCompletedLists

        ]);
    }

    public function upcomingPatientAppointment($id)
    {

        $checkNow = date("Y-m-d");
        // $checkUpdate=(date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));


        $result = DB::table('mhp_appointment_schedulers')->leftJoin('mhp_doctors_masters', 'mhp_doctors_masters.id', '=', 'mhp_appointment_schedulers.doctors_id')->leftJoin('doc_specialists', 'mhp_doctors_masters.specialists_id', '=', 'doc_specialists.id')->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')->leftJoin('mhp_media_type_onlines', 'mhp_media_type_onlines.id', '=', 'mhp_appointment_schedulers.mediaType_online')->where('mhp_appointment_schedulers.StartTime', '>', $checkNow)->where('mhp_appointment_schedulers.patient_id', $id)->where('mhp_appointment_schedulers.delete_status', 0)->select('mhp_appointment_schedulers.*', 'mhp_doctors_masters.*', 'mhp_patients.*', 'mhp_media_type_onlines.name as media_typeOnline_name')->get();

        $totalUpcomingLists = MhpAppointmentScheduler::where('patient_id', $id)->where('StartTime', '>', $checkNow)->where('delete_status', 0)->count();
        return response()->json([
            'status' => 200,
            'message' => 'Upcoming PatientAppointments',
            'upcomingPatientAppointments' => $result,
            'totalUpcomingLists' => $totalUpcomingLists

        ]);
    }


    public function todaysPatientAppointment($id)
    {
        $checkNow = date("Y-m-d");
        $checkUpdate = (date('Y-m-d', strtotime('-1 day', strtotime($checkNow))));


        $result = DB::table('mhp_appointment_schedulers')
            ->leftJoin('mhp_doctors_masters', 'mhp_doctors_masters.id', '=', 'mhp_appointment_schedulers.doctors_id')
            ->leftJoin('doc_specialists', 'mhp_doctors_masters.specialists_id', '=', 'doc_specialists.id')
            ->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')
            ->leftJoin('mhp_media_type_onlines', 'mhp_media_type_onlines.id', '=', 'mhp_appointment_schedulers.mediaType_online')
            ->where('mhp_appointment_schedulers.StartTime', 'LIKE', '%' . $checkUpdate . '%')
            ->where('mhp_appointment_schedulers.patient_id', $id)
            ->where('mhp_appointment_schedulers.delete_status', 0)->select('mhp_appointment_schedulers.*', 'mhp_doctors_masters.*', 'mhp_patients.*', 'mhp_media_type_onlines.name as media_typeOnline_name')->get();


        return response()->json([
            'status' => 200,
            'message' => 'Todays Patient Appointments',
            'todaysPatientAppointments' => $result

        ]);
    }

    public function cancelPatientAppointmentReason(Request $request, $pId, $dId)
    {

        $notes = $request->notes;
        $result = MhpAppointmentScheduler::where('patient_id', $pId)->where('doctors_id', $dId)->update(array('notes' =>  $notes, 'delete_status' => 1));

        return response()->json([
            'status' => 200,
            'message' => 'Cancel Patients Appointment Reasons Updated',
            'result' => $result,

        ]);
    }

    public function cancelPatientAppointment($id)
    {

        $result = DB::table('mhp_appointment_schedulers')
            ->leftJoin('mhp_doctors_masters', 'mhp_doctors_masters.id', '=', 'mhp_appointment_schedulers.doctors_id')
            ->leftJoin('doc_specialists', 'mhp_doctors_masters.specialists_id', '=', 'doc_specialists.id')
            ->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')
            ->leftJoin('mhp_media_type_onlines', 'mhp_media_type_onlines.id', '=', 'mhp_appointment_schedulers.mediaType_online')
            ->where('mhp_appointment_schedulers.patient_id', $id)
            ->where('mhp_appointment_schedulers.delete_status', 1)->select('mhp_appointment_schedulers.*', 'mhp_doctors_masters.*', 'mhp_patients.*', 'mhp_media_type_onlines.name as media_typeOnline_name')->paginate(1);



        return response()->json([
            'status' => 200,
            'message' => 'Cancel Patients Appointments',
            'cancelPatientAppointments' => $result

        ]);
    }

    public function patientAppointmentBook(Request $request)
    {

        // return $request->all();
        $patientData = new MhpAppointmentScheduler();
        $patientData->patient_name = $request->patient_name;
        $patientData->doctors_id = $request->doctors_id;
        $patientData->patient_id = $request->patient_id;
        $patientData->patient_mobile = $request->patient_mobile;
        $patientData->notes = $request->notes;
        $patientData->StartTime = $request->StartTime;
        $patientData->EndTime = $request->EndTime;
        $patientData->Subject = $request->Subject;
        $patientData->status_color = $request->statusColor;
        $patientData->mediaType_online = $request->mediaType_online;
        $patientData->media = $request->media;
        $patientData->save();
        return response()->json([
            'status' => 200,
            'message' => 'Patient Appointment book Added Successfully',


        ]);
    }

    public function reschedulePatientAppointmentBook(Request $request, $patientId)
    {

        MhpAppointmentScheduler::where('patient_id', $patientId)
            ->update([
                'patient_name' => $request->patient_name,
                'doctors_id' => $request->doctors_id,
                'patient_id' => $request->patient_id,
                'patient_mobile' => $request->patient_mobile,
                'notes' => $request->notes,
                'StartTime' => $request->StartTime,
                'EndTime' => $request->EndTime,
                'Subject' => $request->Subject,
                'status_color' => $request->statusColor,
                'mediaType_online' => $request->mediaType_online,
                'media' => $request->media,
            ]);

        return response()->json([
            'status' => 200,
            'message' => 'Patient Appointment book Rescheduled Successfully',


        ]);
    }



    public function allApointmentList($id)
    {
        $todaysDate = date("Y-m-d");

        $checkUpdate = (date('Y-m-d', strtotime('-1 day', strtotime($todaysDate))));

        // $doctorInfo=DB::table('mhp_doctors_masters')->leftJoin('users','users.user_id','=','mhp_doctors_masters.id')->leftJoin('doc_specialists','doc_specialists.id','=','mhp_doctors_masters.specialists_id')->where('mhp_doctors_masters.delete_status',0)->where('mhp_doctors_masters.id',$id)->first();

        $doctorInfo = DB::table('mhp_doctors_masters')->leftJoin('doc_specialists', 'doc_specialists.id', '=', 'mhp_doctors_masters.specialists_id')->where('mhp_doctors_masters.delete_status', 0)->where('mhp_doctors_masters.id', $id)->first();




        //table data all appointment todays patients list 
        $allAppointment = DB::table('mhp_appointment_schedulers')
            ->leftJoin('mhp_patients', 'mhp_patients.id', '=', 'mhp_appointment_schedulers.patient_id')
            ->leftJoin('mhp_usual_providers', 'mhp_usual_providers.id', '=', 'mhp_patients.patient_usual_provider_id')
            ->leftJoin('mhp_birth_sexes', 'mhp_birth_sexes.id', '=', 'mhp_patients.patient_birth_sex_id')
            ->leftJoin('mhp_statuses', 'mhp_statuses.id', '=', 'mhp_patients.patient_status')
            ->where('mhp_appointment_schedulers.doctors_id', $id)
            ->select('mhp_appointment_schedulers.*', 'mhp_patients.patient_hn_number', 'mhp_patients.patient_usual_provider_id', 'mhp_patients.patient_images', 'mhp_usual_providers.usual_provider_name', 'mhp_birth_sexes.birth_sex_name')
            ->where('mhp_appointment_schedulers.StartTime', 'LIKE', '%' . $checkUpdate . '%')
            ->where('mhp_appointment_schedulers.delete_status', 0)->get();

        return response()->json(['status' => 200, 'allAppointment' => $allAppointment, 'doctorInfo' => $doctorInfo]);
    }


    public function allAppointListDoctor()
    {
        // $allAppointmentDoctors=DB::table('mhp_doctors_masters')->leftJoin('users','users.user_id','=','mhp_doctors_masters.id')->where('mhp_doctors_masters.delete_status' ,0)->get(); 


        $allAppointmentDoctors = DB::table('mhp_doctors_masters')->where('mhp_doctors_masters.delete_status', 0)->get();




        return response()->json(['status' => 200, 'allAppointmentDoctors' => $allAppointmentDoctors]);
    }
}
