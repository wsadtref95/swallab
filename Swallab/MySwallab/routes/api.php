<?php

// use App\Http\Controllers\RestaurantController;
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\RestInfos;
use App\Models\FiltClass;
use App\Models\RestItems;
use App\Models\FiltSectionDemos;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


// 取得所有訂單資訊 --> ok
Route::get('/order', [OrderController::class, 'showAll']);

// 送出已編輯玩的文章 --> ok
Route::post('/submit', [BlogController::class, 'submit']);

// 發表文章上傳圖片的路徑 --> ok
Route::post('/upload', [BlogController::class, 'upload']);

// 取得所有餐廳名稱
Route::get('/getrestaurantname', [RestaurantController::class, 'getRestaurantName']);

// 更新菜單內容 --> ok
Route::post('/updatemenu', [FoodController::class, 'updateMenu']);

// 編輯菜單，顯示原資料 --> ok
Route::post('/getsinglemenu', [FoodController::class, 'getSingleMenu']);

// 刪除菜單 --> ok
Route::post('/deletemenu', [FoodController::class, 'deleteMenu']);

// 將菜單寫入資料庫 --> ok
Route::post('/insertmenu', [FoodController::class, 'insertMenu']);

// get 菜單 --> 顯示圖片ok --> 排序 --> ok
Route::get('/getmenu', [FoodController::class, 'getMenuList']);

// get 菜單種類分類 --> ok
Route::get('/getfoodclass', function() {
    return response(
        FiltSectionDemos::all()->toJson(JSON_UNESCAPED_UNICODE)
    )
        ->header('content-type', 'application/json')
        ->header('charset', 'utf-8');
});

// 寫入折扣 --> ok
Route::post('/discount/insert', [DiscountController::class, 'insertDiscount']);

// 點選餐點分類後，顯示出相對應的餐點名稱 --> ok
Route::post('/getfoodname', [FoodController::class, 'getName']);

// 點下餐點後，顯示金額 --> ok
Route::post('/getfoodprice', [FoodController::class, 'getPrice']);

// 寫入營業時間 --> ok
// Route::post('/worktime', [SetTimeController::class, 'store']);
Route::post('/worktime', [RestaurantController::class, 'setOpeningTime']);

// 取得店家資訊 --> ok
Route::get("/restaurantinfo/{id}", function ($id) {
    return response(
        RestInfos::with('own')->find($id)->toJson(JSON_UNESCAPED_UNICODE)
    )
        ->header('content-type', 'application/json')
        ->header('charset', 'utf-8');
});

// 取得餐廳種類 --> ok
Route::get('/restaurantClass', function () {
    return response(
        FiltClass::all()->toJson(JSON_UNESCAPED_UNICODE)
    )
        ->header('content-type', 'application/json')
        ->header('charset', 'utf-8');
});

// 修改店家資訊 --> ok
Route::post('/restaurantinfo/update', [RestaurantController::class, 'restaurantInfo']);
