<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OrderInfos;

class OrderController extends Controller
{
    function updateStatus($orderId, $status)
    {
        try {
            $orderStatus = OrderInfos::find($orderId);
            $orderStatus->o_s_id = $status;
            $orderStatus->save();
    
            return response()->json(['status' => 'ok']);
        } catch (\Exception $e) {
            return response()->json(['status' => 'fail', 'message' => $e->getMessage()]);
        }
    }

    function showAll()
    {
        // 獲取指定 id 的 OrderInfos 及其關聯資料
        $orderInfo = OrderInfos::with(['details', 'status'])->get();

        

        if (!$orderInfo) {
            return response()->json(['message' => 'Order not found'], 404);
        }

        return response()->json($orderInfo);
    }

    function getOrdersWithStatus($status)
    {
        $orders = OrderInfos::where('o_s_id', $status)
            ->with('details')
            ->with('members.users')
            ->orderBy('booking_date', 'asc')
            ->orderBy('booking_time', 'asc')
            ->get();

        return response()->json($orders);
    }

    function sumOfOrders($status)
    {
        $sum = OrderInfos::where('o_s_id', $status)->count();
        
        return response()->json(['count' => $sum]);
    }
}
