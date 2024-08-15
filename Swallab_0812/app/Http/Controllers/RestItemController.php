<?php

namespace App\Http\Controllers;

use App\Http\Resources\RestItemResource;
use App\Models\RestItems;
use Illuminate\Http\Request;

class RestItemController extends Controller
{
    public function index(Request $request)
    {
        $page = $request->input('page', 1);

        $query = RestItems::with(['restInfo', 'filtSectionDemo'])
            ->orderBy('created_at', 'desc');

        $perPage = 4;
        $restItems = $query->paginate($perPage, ['*'], 'page', $page);

        return RestItemResource::collection($restItems);
    }

    public function show($id)
    {
        $restItem = RestItems::with(['restInfo', 'filtSectionDemo'])->findOrFail($id);
        return new RestItemResource($restItem);
    }
}
