<?php

namespace App\Http\Controllers\NewLabModule;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpLabModuleTestCatgeory;
use App\Models\MhpNewLabModuleTestGroup;

use App\Models\MhpNewLabModuleTestName ;
use Illuminate\Support\Facades\Validator;
use DB;
class NewTestNameController extends Controller
{
      public function index()
    {
          $test_name=DB::table('mhp_new_lab_module_test_names')->leftJoin('mhp_lab_module_test_catgeories','mhp_lab_module_test_catgeories.id','mhp_new_lab_module_test_names.test_category_id')->leftJoin('mhp_new_lab_module_test_groups','mhp_new_lab_module_test_names.test_group_id','mhp_new_lab_module_test_groups.id')->select('mhp_lab_module_test_catgeories.*','mhp_new_lab_module_test_groups.*','mhp_new_lab_module_test_names.*')->get();

        return response()->json([
            'status'=>200,
            'test_name'=>$test_name
        ]);
    }



    public function store(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'test_group_id' => 'required|max:100',
            'test_category_id' => 'required|max:100',
        ]);
           

        if ($validator->fails())
        {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);

        }else{
            $test_category = new MhpNewLabModuleTestName ();
            $test_category->test_group_id = $request->test_group_id;
            $test_category->test_category_id = $request->test_category_id;
            $test_category->test_name = $request->test_name;
            $test_category->fee = $request->fee;
            $test_category->test_parameter = implode(',',$request->test_parameter);


            $test_category->save();

            return response()->json(['status'=>200,'message'=>'Test Name Added Successfully']);
        }
    }


    public function edit($id)
    {
         $test_name=DB::table('mhp_new_lab_module_test_names')->leftJoin('mhp_lab_module_test_catgeories','mhp_lab_module_test_catgeories.id','mhp_new_lab_module_test_names.test_category_id')->leftJoin('mhp_new_lab_module_test_groups','mhp_new_lab_module_test_names.test_group_id','mhp_new_lab_module_test_groups.id')->select('mhp_lab_module_test_catgeories.*','mhp_new_lab_module_test_groups.*','mhp_new_lab_module_test_names.*')->where('mhp_new_lab_module_test_names.id',$id)->first();

        return response()->json(['status'=>200,'test_name'=>$test_name]);
    }


    public function update(Request $request, $id)
    {

    
        $test_category =MhpNewLabModuleTestName::find($id);
            $test_category->test_group_id = $request->test_group_id;
            $test_category->test_category_id = $request->test_category_id;
            $test_category->test_name = $request->test_name;
            $test_category->fee = $request->fee;
            $test_category->test_parameter = $request->test_parameter;

            $test_category->save();

            return response()->json(['status'=>200,'message'=>'Test Name Updated Successfully']);
        }
    

    public function destroy($id)
    {
        $del_test_name = MhpNewLabModuleTestName::find($id);

            $del_test_name->delete();

                 $test_name=DB::table('mhp_new_lab_module_test_names')->leftJoin('mhp_lab_module_test_catgeories','mhp_lab_module_test_catgeories.id','mhp_new_lab_module_test_names.test_category_id')->leftJoin('mhp_new_lab_module_test_groups','mhp_new_lab_module_test_names.test_group_id','mhp_new_lab_module_test_groups.id')->select('mhp_lab_module_test_catgeories.*','mhp_new_lab_module_test_groups.*','mhp_new_lab_module_test_names.*')->get();

            return response()->json([
                'status' => 200,
                'test_name'=>$test_name,

                'message' => 'Test Name  deleted successfully',
            ]);

        }

public function testNameById($id){
        $all_name=MhpNewLabModuleTestName::where('test_category_id',$id)->get();

             return response()->json([
                'status' => 200,
                'all_name' => $all_name,
            ]);
}

public function testNameByGroupId($id){
           $test_name=DB::table('mhp_new_lab_module_test_names')->leftJoin('mhp_lab_module_test_catgeories','mhp_lab_module_test_catgeories.id','mhp_new_lab_module_test_names.test_category_id')->leftJoin('mhp_new_lab_module_test_groups','mhp_new_lab_module_test_names.test_group_id','mhp_new_lab_module_test_groups.id')->select('mhp_lab_module_test_catgeories.*','mhp_new_lab_module_test_groups.*','mhp_new_lab_module_test_names.*')->where('mhp_new_lab_module_test_names.test_group_id',$id)->get();

               return response()->json([
                'status' => 200,
                'test_name' => $test_name,
            ]);

}
public function testNameByCategoryId($id){
     $test_name=DB::table('mhp_new_lab_module_test_names')->leftJoin('mhp_lab_module_test_catgeories','mhp_lab_module_test_catgeories.id','mhp_new_lab_module_test_names.test_category_id')->leftJoin('mhp_new_lab_module_test_groups','mhp_new_lab_module_test_names.test_group_id','mhp_new_lab_module_test_groups.id')->select('mhp_lab_module_test_catgeories.*','mhp_new_lab_module_test_groups.*','mhp_new_lab_module_test_names.*')->where('mhp_new_lab_module_test_names.test_category_id',$id)->get();

               return response()->json([
                'status' => 200,
                'test_name' => $test_name,
            ]);
}
}
