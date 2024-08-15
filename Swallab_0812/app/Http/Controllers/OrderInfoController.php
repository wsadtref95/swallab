<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderInfoResource;
use App\Models\OrderInfo;
use Illuminate\Http\Request;

class OrderInfoController extends Controller
{
    public function index(Request $request)
    {
        $type = $request->input('type', 'all');
        $page = $request->input('page', 1);

        $query = OrderInfo::with(['orderDetails', 'orderStatus', 'member'])
            ->orderBy('created_at', 'desc');

        // Add filters based on type if necessary
        if ($type !== 'all') {
            // Implement your filtering logic here based on $type
        }

        $perPage = 4;
        $orderInfos = $query->paginate($perPage, ['*'], 'page', $page);

        return OrderInfoResource::collection($orderInfos);
    }
}
