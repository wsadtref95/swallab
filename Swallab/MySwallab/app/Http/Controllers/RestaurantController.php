<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RestInfos;
use App\Models\Users;
use App\Models\FiltPurposes;
use App\Models\SuitableFor;
use App\Models\FiltClasses;
use Illuminate\Support\Facades\DB;

class RestaurantController extends Controller
{
    function  getRestaurantName() 
    {
        $allRestaurant = Users::where('role', 'admin')
                                ->select('id', 'name')
                                ->get();
        return response()->json($allRestaurant);
    }

    function showTags()
    {
        $tags = FiltPurposes::select('id', 'purpose')->get();

        return $tags;
    }

    function updateRestaurantInfo(Request $request)
    {
        $request->validate([
            'restaurantName' => 'required|string',
            'restaurantClassification' => 'required|numeric',
            'restaurantTel' => 'required|string',
            'restaurantAddress' => 'required|string',
            'restaurantAverage' => 'required|string',
            'tags' => 'required|array',
            'tags.*' => 'string'
        ]);

        // return response()->json([
        //     'restaurantName' => $request->restaurantName,
        //     'restaurantClassification' => $request->restaurantClassification,
        //     'restaurantTel' => $request->restaurantTel,
        //     'restaurantAddress' => $request->restaurantAddress,
        //     'restaurantAverage' => $request->restaurantAverage,
        //     'tags' => $request->tags,
        // ]);


        $id = 1;

        try {
            // 更新Users表
            $user = Users::find($id);
            $user->name = $request->restaurantName;
            $user->phone = $request->restaurantTel;
            $user->save();

            // 更新RestInfos表
            $restInfo = RestInfos::where('user_id', $id)->firstOrFail();
            $restInfo->f_c_id = $request->restaurantClassification;
            $restInfo->address = $request->restaurantAddress;
            $restInfo->avg_price = $request->restaurantAverage;
            $restInfo->save();

            //更新SuitableFor 表
            // 刪除舊有資料
            SuitableFor::where('r_id', $id)->delete();

            // insert tags
            foreach ($request->tags as $tag) {
                SuitableFor::create([
                    'r_id' => $id,
                    'f_p_id' => $tag,
                ]);
            }

            return response()->json(['status' => 'ok'], 200);
        } catch(\Exception $e) {
            return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
        }
    }

    function setOpeningTime(Request $request)
    {
        $id = 1;

        try {
            $openingTime = RestInfos::find($id);
            $openingTime->weekday = $request->weekdays;
            $openingTime->weekend = $request->holiday;
            $openingTime->wd_operating = $request->wOpeningHours;
            $openingTime->we_operating = $request->hOpeningHours;
            $openingTime->wd_close_1 = $request->wBreakTime1;
            $openingTime->wd_close_2 = $request->wBreakTime2;
            $openingTime->we_close_1 = $request->hBreakTime1;
            $openingTime->we_close_2 = $request->hBreakTime2;
            $openingTime->save();

            return response()->json(['status' => 'ok'], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
        }
    }

    function restaurantClass()
    {
        return response(
            FiltClasses::all()->toJson(JSON_UNESCAPED_UNICODE)
        )
            ->header('content-type', 'application/json')
            ->header('charset', 'utf-8');
    
    }

    function restaurantInfo($id)
    {
        return response(
            RestInfos::with('users', 'filtClasses', 'filtPurposes')->find($id)->toJson(JSON_UNESCAPED_UNICODE)
        )
            ->header('content-type', 'application/json')
            ->header('charset', 'utf-8');
    }
}
