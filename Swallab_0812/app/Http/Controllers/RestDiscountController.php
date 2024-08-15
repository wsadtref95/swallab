<?php

namespace App\Http\Controllers;

use App\Http\Resources\RestDiscountResource;
use App\Models\RestDiscount;
use Illuminate\Http\Request;

class RestDiscountController extends Controller
{
    public function index(Request $request)
    {
        $page = $request->input('page', 1);

        $query = RestDiscount::with(['restItem'])
            ->orderBy('created_at', 'desc');

        $perPage = 4;
        $restDiscounts = $query->paginate($perPage, ['*'], 'page', $page);

        return RestDiscountResource::collection($restDiscounts);
    }

    public function show($id)
    {
        $restDiscount = RestDiscount::with(['restItem'])->findOrFail($id);
        return new RestDiscountResource($restDiscount);
    }
}
