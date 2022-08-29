<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::prefix('/admin')->namespace('App\Http\Controllers\Admin')->group(function(){

    // all admin routes are here
    Route::match(['get','post'],'/','AdminController@login');
    
    Route::group(['middleware'=>['admin']],function(){

        Route::get('dashboard','AdminController@dashboard');

        Route::get('logout','AdminController@logout');

        Route::get('settings','AdminController@settings');

        Route::post('admin_update_password','AdminController@chkCurrentPassword');

        Route::post('admins_update_password','AdminController@updateCurrentPassword');

        Route::match(['get','post'],'admin_details_update','AdminController@admin_details_update');


    });

});





