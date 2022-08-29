<?php

namespace App\Http\Controllers\AdminSetupAppointment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpLabratory;

class LabratoryNameController extends Controller
{

        public function index(){

        $all_labratory =MhpLabratory::orderBy('id','desc')->get();


        return response()->json(
            ['status'=>200,'all_labratory'=>$all_labratory]);
    }
    public function store(Request $request)
    {
    
            $labratory = new MhpLabratory();
            $labratory->labratory_name = $request->labratory_name;
         
            $labratory->save();

            return response()->json(['status'=>200,'message'=>'Labratory Added Successfully']);
        
    }

       public function edit($id)
    {
        $edit_labratory=MhpLabratory::find($id);
        return response()->json(['status'=>200,'edit_labratory'=>$edit_labratory]);
    }
        public function update(Request $request, $id)
    {
            $update_lab=MhpLabratory::find($id);
            $update_lab->labratory_name=$request->labratory_name;
            $update_lab->update();

            return response()->json(['status'=>200,'message'=>'Labratory Updated Successfully']);
        
    }
      public function destroy($id)
    {
        $del_lab = MhpLabratory::find($id);
        $del_lab->delete();
    return response()->json(['status'=>200,'message'=>'Labratory Deleted Successfully']);

        }
}
