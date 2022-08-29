<?php

namespace App\Http\Controllers;

use App\Models\MhpPediatricBanglaPreview;
use Illuminate\Http\Request;

class MhpPediatricBanglaPreviewController extends Controller
{
     public function index()
    {
      $pData= MhpPediatricBanglaPreview::get();

        return response()->json([
            'status' => 200,
            'message' => 'Data get Successfully',
            'pData' => $pData
        ]);

    }
    public function store(Request $request)
    {  
        //return $request->all();   
            if ($files = $request->file('pfileName')) {
                $fileNames = $files->getClientOriginalName();
                $fileName = rand(11, 99999).$fileNames;
                $files->move('Peditrict/', $fileName);
            }

            $peditrict = new MhpPediatricBanglaPreview();
            $peditrict->name =  $request->name;            
            $peditrict->file =  $fileName;            
            $peditrict->save();
            
            return response()->json([
                'status' => 200,
                'message' => 'Data Inserted Successfully',
                'peditrict' => $peditrict
            ]);
        }
      
}
