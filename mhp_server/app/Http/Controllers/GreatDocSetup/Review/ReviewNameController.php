<?php

namespace App\Http\Controllers\GreatDocSetup\Review;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MhpGreatDocReview;
use DB;
class ReviewNameController extends Controller
{
              public function store(Request $request)
 {
    
            $reson = new MhpGreatDocReview();
            $reson->review_name_id = $request->review_name_id;
            $reson->review_limit  = $request->review_limit ;
            $reson->review_type = $request->review_type;
            $reson->review_date = $request->review_date;
            $reson->review_other = $request->review_other;
            $reson->reminder_status = $request->reminder_status;
            $reson->save();

            return response()->json(['status'=>200,'message'=>'Review Added Successfully']);
        
    }
}
