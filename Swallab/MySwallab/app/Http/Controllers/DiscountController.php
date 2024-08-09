<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MealDiscount;

class DiscountController extends Controller
{
    function insertDiscount(Request $request)
    {
        // try {
        //     $discount = new MealDiscount();
        //     $discount->class_id = $request->menuList1;
        //     $discount->food_id = $request->menuName1;
        //     $discount->price = $request->menuPrice1;
        //     $discount->start_time = $request->startTime1;
        //     $discount->end_time = $request->endTime1;
        //     $discount->save();
        //     return response()->json(['status' => 'ok'], 200);
        // } catch (\Exception $e) {
        //     return response()->json(['status' => 'fail', 'message' => $e]);
        // }
        $discountsData = $request->input('discounts');

        if (is_array($discountsData) && !empty($discountsData)) {
            try {
                foreach ($discountsData as $data) {
                    $discount = new MealDiscount();
                    $discount->class_id = $data['menuList'];
                    $discount->food_id = $data['menuName'];
                    $discount->price = $data['menuPrice'];
                    $discount->start_time = $data['startTime'];
                    $discount->end_time = $data['endTime'];
                    $discount->save(); // 保存資料
                }
                return response()->json(['status' => 'ok'], 200);
            } catch (\Exception $e) {
                return response()->json(['status' => 'fail', 'message' => $e->getMessage()], 500);
            }
        } else {
            return response()->json(['status' => 'fail', 'message' => 'Invalid input data'], 400);
        }

    }
}
