<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SetTimeController extends Controller
{
    function store(Request $request)
    {
        $data = $request->all();
        $weekdays = $request->weekdays;
        return response()->json([
            'all_data' => $data,
            'weekdays' => $weekdays,
            'holiday' => $request->holiday,
            'wOpeningHours' => $request->wOpeningHours,
            'hOpeningHours' => $request->hOpeningHours,
            'wBreakTime1' => $request->wBreakTime1,
            'wBreakTime2' => $request->wBreakTime2,
            'hBreakTime1' => $request->hBreakTime1,
            'hBreakTime2' => $request->hBreakTime2,
        ]);
    }
}
