<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OrderInfos;

class OrderController extends Controller
{
    function showAll()
    {
        // 獲取指定 id 的 OrderInfos 及其關聯資料
        $orderInfo = OrderInfos::with(['details', 'status'])->get();

        

        if (!$orderInfo) {
            return response()->json(['message' => 'Order not found'], 404);
        }

        return response()->json($orderInfo);
    }

    function getOrdersWithStatusOne()
    {
        $orders = OrderInfos::whereHas('status', function($query) {
            $query->where('status', 1);
        })
        ->with('details')
        ->get();

        return response()->json($orders);
    }
}
