<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RestItems;
use App\Models\FiltSectionDemos;
use Illuminate\Support\Facades\DB;

class FoodController extends Controller
{
    function getFoodClass(Request $request)
    {
        $r_id = $request->header('X-User-Id'); // 1
        // $r_id = 1;
        $sections = DB::table('restitems')
            ->join('filtsectiondemos', 'restitems.f_s_d_id', '=', 'filtsectiondemos.id')
            ->where('restitems.r_id', $r_id)
            ->distinct()
            ->select('filtsectiondemos.section', 'filtsectiondemos.id')
            ->get();

        return response()->json($sections);
    }

    function updateMenu(Request $request)
    {
        try {
            $id = $request->id;
            $updateMealName = $request->updateMealName;
            $updatePrice = $request->updatePrice;

            $updateMenu = RestItems::find($id);
            $updateMenu->item_name = $updateMealName;
            $updateMenu->item_price = $updatePrice;
            $updateMenu->save();

            return response()->json(['status' => 'ok']);
        } catch (\Exception $e) {
            return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
        }
    }

    function getSingleMenu(Request $request)
    {
        // $singleMenu = $request->myFoodId;
        // return response()->json($singleMenu);
        $id = $request->myFoodId;
        $singleMenu = RestItems::find($id);
        return response()->json($singleMenu);
    }

    function deleteMenu(Request $request)
    {
        // $delete = $request->id;
        // return response()->json($delete, 200, [], JSON_UNESCAPED_UNICODE);
        $id = $request->id;
        $menu = RestItems::find($id);
        // return response()->json($menu, 200, [], JSON_UNESCAPED_UNICODE);
        if ($menu) {
            $menu->delete();
            return response()->json(['status' => 'ok']);
        } else {
            return response()->json(['status' => 'fail'], 404, [], JSON_UNESCAPED_UNICODE);
        }
    }

    function insertMenu(Request $request)
    {
        // $addMenu = $request->all();
        // return response()->json($addMenu, 200, [], JSON_UNESCAPED_UNICODE);
        $image = $request->file('foodPhoto');
        $imagePath = $image->store('images', 'public');
        $price = $request->foodPrice;
        $item_name = $request->foodName;
        $photo = 'storage/' . $imagePath;

        if (isset($request->addClass)) {
            try {
                DB::beginTransaction();
                $addFoodClass = new FiltSectionDemos();
                $addFoodClass->section  = $request->addClass;
                $addFoodClass->save();

                $addMenu = new RestItems();
                // $addMenu->r_id = 1;
                $addMenu->r_id = $request->header('X-User_id');
                $addMenu->item_price = $price;
                $addMenu->f_s_d_id = $addFoodClass->id;
                $addMenu->item_name = $item_name;
                $addMenu->item_photo = $photo;
                $addMenu->save();
                DB::commit();
                return response()->json(['status' => 'ok']);
            } catch (\Exception $e) {
                DB::rollBack();
                return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
            }
        } else {
            try {
                $addMenu = new RestItems();
                $addMenu->r_id = 1;
                $addMenu->item_price = $price;
                $addMenu->f_s_d_id = $request->classification;
                $addMenu->item_name = $item_name;
                $addMenu->item_photo = $photo;
                $addMenu->save();
            } catch (\Exception $e) {
                return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
            }

            return response()->json(['status' => 'ok']);
        }
    }

    function getName(Request $request)
    {
        $classId = $request->classId;
        $foodName = RestItems::where('f_s_d_id', $classId)->get();
        // return response()->json($foodClass, 200, [], JSON_UNESCAPED_UNICODE);

        if ($foodName) {
            return response()->json($foodName, 200, [], JSON_UNESCAPED_UNICODE);
        } else {
            return response()->json(['error' => 'Not Found'], 404);
        }
    }

    function getMenuList()
    {
        try {
            $menuList = DB::table('filtSectionDemos')
                ->leftJoin('RestItems', 'filtSectionDemos.id', '=', 'RestItems.f_s_d_id')
                ->select('*')
                ->orderBy('RestItems.created_at', 'desc')
                ->get();

            return response()->json($menuList, 200, [], JSON_UNESCAPED_UNICODE)
                ->header('content-type', 'application/json')
                ->header('charset', 'utf-8');
        } catch (\Exception $e) {
            return response()->json(['message' => $e->getMessage()]);
        }
    }

    function getPrice(Request $request)
    {
        // $foodId = $request->input('foodId');
        $foodId = $request->foodId;
        // dd($foodId);
        // return response()->json($foodId, 200, [], JSON_UNESCAPED_UNICODE);
        $foodPrice = RestItems::find($foodId);
        return response()->json($foodPrice, 200, [], JSON_UNESCAPED_UNICODE);
    }
}
