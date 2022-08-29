<?php

namespace App\Http\Controllers\AdminSetupDoctors;

use App\Http\Controllers\Controller;
use App\Models\MhpDrugGenericName;
use App\Models\MhpDrugName;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use DB;

class DrugNameController extends Controller
{
   

    public function  drugs_of_mims()
    {

        $drugs = MhpDrugName::with('generic_name')->where('product_types','mims')->where('delete_status',0)->orderBy('id','asc')->get();
      
        return response()->json([
            'status' => 200,
            'drugs' => $drugs,
        ]);

    }

    public function fav_drug()
    {

        $drugs = MhpDrugName::with('generic_name')->where('is_favourite',1)->where('delete_status',0)->orderBy('id','desc')->get();

      
        return response()->json([
            'status' => 200,
            'drugs' => $drugs,
        ]);

    }

    

    public function Generic()
    {

        $drugGeneric = MhpDrugGenericName::orderBy('id','desc')->where('delete_status',0)->get();
        return response()->json([
            'status' => 200,
            'drugGeneric' => $drugGeneric,
        ]);

    }

    public function Generic_store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:191'       
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validate_error' => $validator->messages(),
            ]);
        } else {
            $drugs = new MhpDrugGenericName();
            $drugs->name = $request->input('name');
            $drugs->save();

            return response()->json([
                'status' => 200,
                'message' => 'Generic Name Added Successfully',
            ]);
        }
    }

    public function Generic_edit($id)
    {
        $drugs = MhpDrugGenericName::find($id);
        if ($drugs) {
            return response()->json([
                'status' => 200,
                'drugs' => $drugs,
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'No Drug Name Id Found',
            ]);
        }
    }

    public function Generic_update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
             'name' => 'required|max:191'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validate_error' => $validator->messages(),
            ]);
        } else {
            $drugs = MhpDrugGenericName::find($id);
            if ($drugs) {
                $drugs->name = $request->input('name');
                $drugs->update();

                return response()->json([
                    'status' => 200,
                    'message' => 'Generic Name Update Successfully',
                ]);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => 'No Generic Name Id Found',
                ]);
            }
        }
    }

    public function Generic_destroy($id)
    {

        $drugs = MhpDrugGenericName::find($id);
        if ($drugs)
        {
            if ($drugs['delete_status']==0){
                $delete_status = 1;
            }else{
                $delete_status = 0;
            }
            $drugs->delete_status = $delete_status;
            $drugs->save();
            return response()->json([
                'status' => 200,
                'message' => 'Drugs deleted successfully',
            ]);

        }else{
            return response()->json([
                'status' => 404,
                'message' => 'No Drugs Found',
            ]);
        }
    }


    public function drugs_by_generic($id)
    {

        $drugs = MhpDrugName::with('generic_name')->where('generic_id',$id)->where('delete_status',0)->orderBy('id','desc')->get();
        return response()->json([
            'status' => 200,
            'drugs' => $drugs,
        ]);

    }

    public function search_drug($name)
    {
        $drugs = MhpDrugName::with('generic_name')
         ->where('drug_name','LIKE', '%'. $name. '%')
        // ->orwhereHas('generic_name', function($q) use ($name){
        //     $q->where('name','LIKE', '%'. $name. '%');
        // })
        ->where('delete_status',0)
        ->get();

        if(count($drugs)){
            return Response()->json($drugs);
        }
        else
        {
            return response()->json(['drugs' => 'No Data not found'],404);
        }
       
    }

    public function search_drug_Asc_desc($name)
    {
        $drugs = MhpDrugName::with('generic_name')
        ->where('delete_status',0)
        ->orderBy('id',$name)->get();

        if(count($drugs)){
            return Response()->json($drugs);
        }
        else
        {
            return response()->json(['drugs' => 'No Data not found'],404);
        }
       
    }
    

    public function index()
    {

        $drugs = MhpDrugName::with('generic_name')->where('delete_status',0)->orderBy('id','desc')->get();
        return response()->json([
            'status' => 200,
            'drugs' => $drugs,
        ]);

    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'drug_name' => 'required|max:191',
            'qty' => 'required|max:191',
            'rpts' => 'required|max:191',
            'bpp' => 'required|max:191',
            'tgp' => 'required|max:191',
            'restriction' => 'required|max:191',
            // 'generic_id' => 'required|max:191',
            'drug_description' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validate_error' => $validator->messages(),
            ]);
        } else {
            $drugs = new MhpDrugName();
            $drugs->src_primary_key = $request->input('src_primary_key');
            $drugs->strength = $request->input('strength');
            $drugs->macrohealth_sg = $request->input('macrohealth_sg');
            $drugs->mims_sg = $request->input('mims_sg');
            $drugs->mims_type = $request->input('mims_type');
            $drugs->guid = $request->input('guid');
            $drugs->product_types = $request->input('product_types');


            $drugs->drug_name = $request->input('drug_name');
            $drugs->qty = $request->input('qty');
            $drugs->rpts = $request->input('rpts');
            $drugs->bpp = $request->input('bpp');
            $drugs->tgp = $request->input('tgp');
            $drugs->restriction = $request->input('restriction');
            $drugs->generic_id = $request->input('generic_id');
            $drugs->drug_description = $request->input('drug_description');
            $drugs->save();

            return response()->json([
                'status' => 200,
                'message' => 'Drug Name Added Successfully',
            ]);
        }
    }

    
    public function edit($id)
    {
        $drugs = MhpDrugName::with('generic_name')->find($id);

        if ($drugs) {
            return response()->json([
                'status' => 200,
                'drugs' => $drugs,
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'No Drug Name Id Found',
            ]);
        }
    }

    public function fav_dug_update($id)
    {
        $drugs = MhpDrugName::find($id);

        $drugs->is_favourite = 1;

        $drugs->update();

        return response()->json([
            'status' => 200,
            'message' => 'Fav drugs add Succefully',
            'drug' =>$drugs
        ]);

    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
             'drug_name' => 'required|max:191',
            'qty' => 'required|max:191',
            'rpts' => 'required|max:191',
            'bpp' => 'required|max:191', 
            'tgp' => 'required|max:191',
            'restriction' => 'required|max:191',

            // 'generic_id' => 'required|max:191',
            'drug_description' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validate_error' => $validator->messages(),
            ]);
        } else {
            $drugs = MhpDrugName::find($id);
            if ($drugs) {

                   $drugs->src_primary_key = $request->input('src_primary_key');
            $drugs->strength = $request->input('strength');
            $drugs->macrohealth_sg = $request->input('macrohealth_sg');
            $drugs->mims_sg = $request->input('mims_sg');
            $drugs->mims_type = $request->input('mims_type');
            $drugs->guid = $request->input('guid');
            $drugs->product_types = $request->input('product_types');
                $drugs->drug_name = $request->input('drug_name');
                $drugs->qty = $request->input('qty');
                $drugs->rpts = $request->input('rpts');
                $drugs->bpp = $request->input('bpp');
                $drugs->tgp = $request->input('tgp');
                $drugs->restriction = $request->input('restriction');

                $drugs->generic_id = $request->input('generic_id');
                $drugs->drug_description = $request->input('drug_description');
                $drugs->update();

                return response()->json([
                    'status' => 200,
                    'message' => 'Drug Name Update Successfully',
                ]);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => 'No Drug Name Id Found',
                ]);
            }
        }
    }

    public function destroy($id)
    {

        $drugs = MhpDrugName::find($id);
        if ($drugs)
        {
            if ($drugs['delete_status']==0){
                $delete_status = 1;
            }else{
                $delete_status = 0;
            }
            $drugs->delete_status = $delete_status;
            $drugs->save();
            return response()->json([
                'status' => 200,
                'message' => 'Drugs deleted successfully',
            ]);

        }else{
            return response()->json([
                'status' => 404,
                'message' => 'No Drugs Found',
            ]);
        }
    }

}
