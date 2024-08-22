<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OrderInfos;
use App\Models\RestInfos;

class OrderController extends Controller
{
    function getStatus(Request $request)
    {
        $r_id = $request->header('X-User-Id');
        // $r_id = 1;
        $restInfo = RestInfos::where('user_id', $r_id)->select('id', 'status')->first();

        return response()->json($restInfo);
    }

    function changeStatus(Request $request)
    {
        try {
            $r_id = $request->header('X-User-Id');
            // $r_id = 1;
            $restInfo = RestInfos::where('user_id', $r_id)->select('id', 'status')->first();

            if ($restInfo) {
                $newStatus = $restInfo->status == 0 ? 1 : 0;
            } else {
                return response()->json(['message' => 'Status not found'], 404);
            }

            $restInfo->status = $newStatus;
            $restInfo->save();

            return response()->json(['status' => $newStatus]);
        } catch (\Exception $e) {
            return response()->json($e->getMessage());
        }
    }

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

    function showAll(Request $request)
    {
        // $id = $request->header('X-User-Id'); // 1
        $id = 1;
        // 獲取指定 id 的 OrderInfos 及其關聯資料
        $orderInfo = OrderInfos::with(['details', 'status'])
            ->where('r_id', $id)
            ->get();



        if ($orderInfo->isEmpty()) {
            return response()->json(['message' => 'Order not found'], 404);
        }

        return response()->json($orderInfo, $id);
    }

    function getOrdersWithStatus(Request $request, $status)
    {
        // $id = $request->header('X-User-Id'); // 1
        $id = 1;
        $orders = OrderInfos::where('o_s_id', $status)
            ->where('r_id', $id)
            ->with('details')
            ->with('members.users')
            ->orderBy('booking_date', 'asc')
            ->orderBy('booking_time', 'asc')
            ->get();

        return response()->json($orders);
    }

    function sumOfOrders(Request $request, $status)
    {
        $id = $request->header('X-User-Id');
        $sum = OrderInfos::where('o_s_id', $status)->where('r_id', $id)->count();

        return response()->json(['count' => $sum, 'herder' => $id]);
    }
}
