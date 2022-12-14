<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Hash;
use Auth;
use Session;
use App\Models\User;
use App\Models\Admin;
use Image;
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{

    public function getUser($email){

        $user =  User::where("email", $email)->first();
        
        if(!$user){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }else{
            return response([
                'message'=>'Logged in'
            ], 200);
        }
    }

    public function register(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required |unique:users|email',
            'password' => 'required|min:8'              
         ]);
 
         if ($validator->fails())
         {
             return response()->json([
                'status' => 400,
                 'error_msg' => $validator->messages(),
             ]);
         }else{
             $data = new User();
             $data->name = $request->name;
             $data->email = $request->email;
             $data->password = Hash::make($request->password);
             $data->user_type =$request->user_type;
             $data->user_id =$request->user_id;
             $data->save();
 
             return response()->json([
                 'status' => 200,
                 'message' => 'User Registraion Completed',
             ]);
 
         }


    }

    // ------------------ [ User Detail ] ---------------------
    public function userDetail($email) {
        $user=array();
        if($email != "") {
            $user=User::where("email", $email)->first();
            return $user;
        }
    }



    public function login(Request $request){

        $fields = $request->validate([
         'email'=>'required|string|email',
         'password'=>'required|string'   
        ]);

        //Check email

        // $user =  User::where("email", $request->email)->where("password", $request->password)->first();

        $user =  User::where("email", $request->email)->first();
        
        if(!$user){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }

       $check = Hash::check($request->password,$user->password);

        //Check Password
        if(!$check){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }
        $response= [
            'message' => 'User Logged in sucessfully',
            'user' => $user
        ];

        return response($response, 201);
    }

    public function login_patient(Request $request){

        $fields = $request->validate([
         'email'=>'required|string|email',
         'password'=>'required|string'   
        ]);

        $user =  User::where("email", $request->email)->where('user_type','Patient')->first();

        if(!$user){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }

       $check = Hash::check($request->password,$user->password);

        //Check Password
        if(!$check){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }
        $response= [
            'message' => 'User Logged in sucessfully',
            'user' => $user
        ];

        return response($response, 201);
    }

    public function login_doctor(Request $request){

        $fields = $request->validate([
         'email'=>'required|string|email',
         'password'=>'required|string'   
        ]);

        $user =  User::where("email", $request->email)->where('user_type','Doctor')->first();

        if(!$user){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }

       $check = Hash::check($request->password,$user->password);

        //Check Password
        if(!$check){
            return response([
                'message'=>'Invalid Credentials'
            ], 401);
        }
        $response= [
            'message' => 'User Logged in sucessfully',
            'user' => $user
        ];

        return response($response, 201);
    }
  

    public function updatePassword(Request $request,$id)
    {
        $user = User::find($id);



        $this->validate($request, [
            'password' => 'required',
            'new_password' => 'different:password',
        ]);
        
        if (Hash::check($request->password, $user->password)) { 
           $user->fill([
            'password' => Hash::make($request->new_password)
            ])->save();
        
             return response()->json([
           'status' => 200,
           'message' => 'Your Password Updated Successfully',
        ]);
      
        
        } else {

            return response()->json([
                'status' => 404,
                'message' => 'Password does not match,Please chack ?',
             ]);

          
        }

        // $data->password = Hash::make($request->password);

        // $data->update();
        // return response()->json([
        //    'status' => 200,
        //    'message' => 'Your Password Updated Successfully',
        // ]);
    }




//     public function dashboard()
//     {
//         Session::put('page','dashboard');
//         return view('admin.admin_dashboard');
//     }

//     public function login(Request $request)
//     {
//         if($request->isMethod('post')){
//             $data = $request->all();
//             // echo "<pre>";print_r($data);die();

//             if(Auth::guard('admin')->attempt(['email'=>$data['email'], 'password'=>$data['password']])){
//                 return redirect('/admin/dashboard');
//             }else{
//                 Session::flash('error_message', 'Invalid Email or Password!');
//                 return redirect()->back();
//             }
//         }
//         return view('admin.admin_login');
//     }

//     public function logout()
//     {
//         Auth::guard('admin')->logout();
//         return redirect('/admin');
//     }

//     public function settings()
//     {
//         Session::put('page','settings');
//         $data = Auth::guard('admin')->user();
//         // $data = json_decode(json_encode($data));
//         return view('admin.admin_settings',compact('data'));
//     }

//     public function chkCurrentPassword(Request $request)
//     {
//         $data = $request->all();
//         if(Hash::check($data['current_password'], Auth::guard('admin')->user()->password)){
//             echo "true";
//         }else{
//             echo "false";
//         }

//     }

//     public function updateCurrentPassword(Request $request)
//     {
//         if($request->isMethod('post')){

//             $data = $request->all();
//             // check current password
//             if (Hash::check($data['current_password'],Auth::guard('admin')->user()->password)) {
//                 // check new and confirm password
//                 if ($data['new_password']==$data['confirm_password']) {

//                 // update password

//                    Admin::where('id',Auth::guard('admin')->user()->id)->update(['password'=>bcrypt($data['new_password'])]);
//                     Session::flash('success_message','Your password updated successfully!');

//                 }else{
//                     Session::flash('error_message','Your new and confirm password is not same!');
//                 }
                
//             }else{
//                 Session::flash('error_message','Your current password is not correct!');
//             }
//             return redirect()->back();
//         }

//     }

//     public function admin_details_update(Request $request)
//     {
//         Session::put('page','admin_details_update');
        
//         if($request->isMethod('post')){
//             $data = $request->all();
//             // echo "<pre>";print_r($data);die();
// // validation on the input field
//             $rules = [
//                 'name'=>'required|regex:/^[\pL\s\-]+$/u',
//                 'mobile'=>'required|numeric',
//                 // 'image'=>'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
//             ];
// // validation message for those input fields
//             $validMsg = [
//                 'name.required'=>'Name field is required',
//                 'name.alpha'=>'Valid Name is required',
//                 'mobile.required'=>'Mobile field is required',
//                 'mobile.required'=>'Valid Mobile is required',
//             ];
//             $this->validate($request,$rules,$validMsg);

//             if ($request->hasFile('image')) {
//                 // get image tmp name 
//                 $img_tmp = $request->file('image');
// // check whether the image exists or not
//                     if (!empty($data['current_image'])) {
//                         $image_path = 'images/admin_images/admin_profile/'.$data['current_image'];
// // if file exists then remove it
//                         if(file_exists($image_path)){
//                             unlink($image_path);
//                         }
//                     }

// // then check the file validity
//                 if ($img_tmp->isValid()) {
// // if file is valid then get the file extension
//                     $img_ext = $img_tmp->getClientOriginalExtension();
// // make an image name with some random number
//                     $img_name = rand(111,99999).'.'.$img_ext;
// // declare the storage path where the file have to save
//                     $image_path = 'images/admin_images/admin_profile/'.$img_name;
// // dave the file into the given path
//                     Image::make($img_tmp)->resize(200,200)->save($image_path);                   
                    
//                 }                
// // if the file is already exists and dont want to give an image again
//             }else if(!empty($data['current_image'])){

//                 $img_name = $data['current_image'];
// // if image doesnt exists and you also dont want to save any image
//             }else{

//                 $img_name = "";

//             }
                    
// //save the data into database 
//             Admin::where('email',Auth::guard('admin')->user()->email)->update(['name'=>$data['name'],'mobile'=>$data['mobile'],'image'=>$img_name]);
// // after saving the data give a flash message to the view
//             session::flash('success_message','Admin Details updated successfully!');
// // after completing the process return to the view page
//             return redirect()->back();
//         }
// // if the request is get then we return the only view page
//         return view('admin.admin_update');
//     }
}
