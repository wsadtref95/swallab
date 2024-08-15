<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;

use App\Models\OrderInfos;
use App\Models\OrderDetails;

use Illuminate\Http\JsonResponse;

use App\Http\Resources\OrderInfoResource;


class OrderInfosController extends BaseController
{
    public function index(Request $request): JsonResponse
    {
        $perPage = $request->input('perPage', 4);
        $page = $request->input('page', 1);

        $orderInfos = OrderInfos::with('OrderDetails', 'OrderStatuses', 'Members')
            ->orderBy('created_at', 'desc')
            ->paginate($perPage, ['*'], 'page', $page);

        return response()->json($orderInfos);
    }







    public function index(): JsonResponse
    {
        $orderInfos = OrderInfos::all(); // 使用複數形式
        $resourceCollection = OrderInfoResource::collection($orderInfos);
        return response()->json($resourceCollection);
    }
    public function getDetails(): JsonResponse
    {
        $orderInfo = OrderInfos::with('OrderDetails', 'OrderStatuses', 'Members', 'RestInfos')->get();
        $resourceCollection = OrderInfoResource::collection($orderInfo);
        // 返回 JSON 響應
        return response()->json($resourceCollection);
    }




    public function getOrderInfos(Request $request)
    {
        $data = OrderInfos::where('id' < 10)->get();
        return $this->sendResponse($data, 'OrderInfos retrieved successfully.');
    }
}
