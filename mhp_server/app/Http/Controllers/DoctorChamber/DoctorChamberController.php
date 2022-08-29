<?php

namespace App\Http\Controllers\DoctorChamber;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpDoctorChamber;
use App\Models\MhpDoctorsMaster;
use App\Models\MhpUsualProvider;
use DB;
class DoctorChamberController extends Controller
{

      public function index($id){
        $docTimelSlots=DB::table('mhp_doctor_chambers')->leftJoin('mhp_doctors_masters','mhp_doctors_masters.id','mhp_doctor_chambers.doctor_id')->leftJoin('mhp_usual_providers','mhp_doctor_chambers.chamber_id','mhp_usual_providers.id')->where('mhp_doctor_chambers.doctor_id',$id)->where('mhp_doctor_chambers.delete_status',0)->get();

        return response()->json([
            'status'=>200,
            'docTimeSlots'=>$docTimelSlots
        ]);
    }

    public function store(Request $request){

        $docTimelSlots=new MhpDoctorChamber();
        $docTimelSlots->doctor_id=$request->doctor_id;
        $docTimelSlots->chamber_id=$request->chamber_id;
        $docTimelSlots->month=$request->month;
        $docTimelSlots->all_month=$request->all_month;
        $docTimelSlots->day=$request->day;
        $docTimelSlots->year=$request->year;
        $docTimelSlots->slot_from=$request->slot_from;
        $docTimelSlots->slot_to=$request->slot_to;
        $docTimelSlots->type=$request->type;
        $docTimelSlots->save();
        return response()->json(['status'=>200,'message'=>'Doctor chamber Added Successfully']);

      
    }
    public function getDoctorName($doctorId){
        $doctor_name=MhpDoctorsMaster::where('id',$doctorId)->where('delete_status',0)->get();

        return response()->json([
            'status'=>200,
            'doctor_name'=>$doctor_name,
        ]);

    }

       public function getChamberName($chamberId){
        $chamber_name=MhpUsualProvider::where('id',$chamberId)->where('delete_status',0)->get();

        return response()->json([
            'status'=>200,
            'chamber_name'=>$chamber_name,
        ]);

    }

    public function doctorSearchById($id){

   $doctor=MhpDoctorsMaster::where('id',$id)->where('delete_status',0)->first();

        return response()->json([
            'status'=>200,
            'doctor'=>$doctor,
        ]);
    }

    public function allTimeSlots(){
        $docTimelSlots=DB::table('mhp_doctor_chambers')->leftJoin('mhp_doctors_masters','mhp_doctors_masters.id','mhp_doctor_chambers.doctor_id')->leftJoin('mhp_usual_providers','mhp_doctor_chambers.chamber_id','mhp_usual_providers.id')->select('mhp_doctor_chambers.*','mhp_doctors_masters.dr_given_name','mhp_usual_providers.usual_provider_name')->where('mhp_doctor_chambers.delete_status',0)->get();

        return response()->json([
            'status'=>200,
            'docTimeSlots'=>$docTimelSlots
        ]);
    }
 
   public function edit($id){
    $editTimeSlots=MhpDoctorChamber::find($id);


        return response()->json([
            'status'=>200,
            'editTimeSlots'=>$editTimeSlots
        ]);
   }

       public function update(Request $request,$id){

        $docTimelSlots=MhpDoctorChamber::find($id);
        $docTimelSlots->doctor_id=$request->doctor_id;
        $docTimelSlots->chamber_id=$request->chamber_id;
        $docTimelSlots->month=$request->month;
        $docTimelSlots->all_month=$request->all_month;
        $docTimelSlots->day=$request->day;
        $docTimelSlots->year=$request->year;
        $docTimelSlots->slot_from=$request->slot_from;
        $docTimelSlots->slot_to=$request->slot_to;
        $docTimelSlots->type=$request->type;
        $docTimelSlots->update();
        return response()->json(['status'=>200,'message'=>'Doctor chamber Updated Successfully']);

      
    }

    public function destroy($id){
   
      $del_slots = MhpDoctorChamber::find($id);
        if ($del_slots)
        {
            if ($del_slots['delete_status']==0){
                $delete_status = 1;
            }else{
                $delete_status = 0;
            }
            $del_slots->delete_status = $delete_status;
            $del_slots->save();
            return response()->json([
                'status' => 200,
                'message' => 'Doctor chamber deleted Successfully',
            ]);

        }else{
            return response()->json([
                'status' => 404,
                'message' => 'No  Found',
            ]);
        }

    }

}
