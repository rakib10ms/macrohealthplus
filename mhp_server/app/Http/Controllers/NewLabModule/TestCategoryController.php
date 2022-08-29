<?php

namespace App\Http\Controllers\NewLabModule;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpLabModuleTestCatgeory;
use App\Models\MhpNewLabModuleTestGroup;

use Illuminate\Support\Facades\Validator;
class TestCategoryController extends Controller
{
     public function index()
    {
        $test_category = MhpLabModuleTestCatgeory::with('testGroup')->orderBy('id','desc')->get();


        return response()->json(
            ['status'=>200,'test_category'=>$test_category]);
    }



    public function store(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'test_group_id' => 'required|max:100',
            'test_category_name' => 'required|max:100',
        ]);
           

        if ($validator->fails())
        {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages(),
            ]);

        }else{
            $test_category = new MhpLabModuleTestCatgeory();
            $test_category->test_group_id = $request->test_group_id;
            $test_category->test_category_name = $request->test_category_name;
            $test_category->save();

            return response()->json(['status'=>200,'message'=>'test_category Added Successfully']);
        }
    }


    public function edit($id)
    {
        $test_category=MhpLabModuleTestCatgeory::find($id);
        $test_group=MhpNewLabModuleTestGroup::where('id', $test_category->test_group_id)->pluck('test_group_name');
        return response()->json(['status'=>200,'test_category'=>$test_category,'test_group'=>$test_group]);
    }


    public function update(Request $request, $id)
    {

      
            $update_test_category=MhpLabModuleTestCatgeory::find($id);
            $update_test_category->test_group_id=$request->test_group_id;
            $update_test_category->test_category_name = $request->test_category_name;

            $update_test_category->update();

            return response()->json(['status'=>200,'message'=>'test_category  Updated Successfully']);
        
    }

    public function destroy($id)
    {
        $del_test_category = MhpLabModuleTestCatgeory::find($id);

            $del_test_category->delete();
        $test_category = MhpLabModuleTestCatgeory::with('testGroup')->orderBy('id','desc')->get();
            return response()->json([
                'status' => 200,
                'test_category'=>$test_category,
                'message' => 'test_category  deleted successfully',
            ]);

        }


public function testCategoryById($id){
        $all_cat=MhpLabModuleTestCatgeory::where('test_group_id',$id)->get();

             return response()->json([
                'status' => 200,
                'all_cat' => $all_cat,
            ]);
}


}
