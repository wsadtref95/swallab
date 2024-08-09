<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RestaurantInfo;
use Illuminate\Support\Facades\DB;

class RestaurantController extends Controller
{
    function  getRestaurantName() 
    {
        $allRestaurant = DB::table('restaurant_info')
                            ->select('id', 'restaurant_name', 'restaurant_class')
                            ->get();
        
        return response()->json($allRestaurant);
    }

    function restaurantInfo(Request $request)
    {
        $request->validate([
            'restaurantName' => 'required|string',
            'restaurantClassification' => 'required|numeric',
            'restaurantTel' => 'required|string',
            'restaurantAddress' => 'required|string',
            'restaurantAverage' => 'required|string',
        ]);

        $id = 1;

        try {
            $restInfo = RestaurantInfo::find($id);
            $restInfo->restaurant_name = $request->restaurantName;
            $restInfo->restaurant_class = $request->restaurantClassification;
            $restInfo->phone = $request->restaurantTel;
            $restInfo->address = $request->restaurantAddress;
            $restInfo->average_fee = $request->restaurantAverage;
            $restInfo->save();

            return response()->json(['status' => 'ok'], 200);
        } catch(\Exception $e) {
            return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
        }
    }

    function setOpeningTime(Request $request)
    {
        $id = 1;

        try {
            $openingTime = RestaurantInfo::find($id);
            $openingTime->weekday = $request->weekdays;
            $openingTime->holiday = $request->holiday;
            $openingTime->wOpeningHours = $request->wOpeningHours;
            $openingTime->hOpeningHours = $request->hOpeningHours;
            $openingTime->wBreakTime1 = $request->wBreakTime1;
            $openingTime->wBreakTime2 = $request->wBreakTime2;
            $openingTime->hBreakTime1 = $request->hBreakTime1;
            $openingTime->hBreakTime2 = $request->hBreakTime2;
            $openingTime->save();

            return response()->json(['status' => 'ok'], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => 'fail', 'message' => $e]);
        }
    }
}
