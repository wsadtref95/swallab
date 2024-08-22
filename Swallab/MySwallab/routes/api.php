<?php

// use App\Http\Controllers\RestaurantController;
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\RestInfos;
use App\Models\FiltClasses;
use App\Models\RestItems;
use App\Models\FiltSectionDemos;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');


// 測試
Route::get('/test', function() {
    $data = FiltClasses::with('restInfos')->where('FiltClasses.id', 1)->get();
    
    return response()->json($data);
});

// =================


// 登入
Route::post('/login', [LoginController::class, 'login']);

// 註冊
Route::post('/store', [LoginController::class, 'register']);


// 調整接單狀態
Route::get('/order/changestatus', [OrderController::class, 'changeStatus']);

// 取得接單狀態
Route::get('/order/status', [OrderController::class, 'getStatus']);

// 更新訂單狀態 --> ok
Route::get('/order/update/{orderId}/{status}', [OrderController::class, 'updateStatus']);

// 取得有幾筆訂單 --> ok
Route::get('/sumoforders/{status}', [OrderController::class, 'sumOfOrders']);

// 取得所有訂單資訊 --> ok
Route::get('/order', [OrderController::class, 'showAll']);

// 依訂單狀態取得訂單
Route::get('/order/{status}', [OrderController::class, 'getOrdersWithStatus']);

// 取得食記首頁
Route::get('getallnotes', [BlogController::class, 'getAllNotes']);

// 取得寫完的文章
Route::get('/getnote/{id}', [BlogController::class, 'getContent']);

// 送出已編輯完的文章 --> ok
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
Route::get('/getfoodclass', [FoodController::class, 'getFoodClass']);

// 寫入折扣 --> ok
Route::post('/discount/insert', [DiscountController::class, 'insertDiscount']);

// 點選餐點分類後，顯示出相對應的餐點名稱 --> ok
Route::post('/getfoodname', [FoodController::class, 'getName']);

// 點下餐點後，顯示金額 --> ok
Route::post('/getfoodprice', [FoodController::class, 'getPrice']);

// 寫入營業時間 --> ok
Route::post('/worktime', [RestaurantController::class, 'setOpeningTime']);

// 顯示所有 tags
Route::get('/showtags', [RestaurantController::class, 'showTags']);

// 取得店家資訊 --> ok
Route::get("/restaurantinfo/{id}", [RestaurantController::class, 'restaurantInfo']);

// 取得餐廳種類 --> ok
Route::get('/restaurantClass', [RestaurantController::class, 'restaurantClass']);

// 修改店家資訊 --> ok
Route::post('/restaurantinfo/update', [RestaurantController::class, 'updateRestaurantInfo']);
