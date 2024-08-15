<?php

namespace App\Http\Controllers;

use App\Http\Resources\RestInfoResource;
use App\Models\RestInfos;
use Illuminate\Http\Request;

class RestInfoController extends Controller
{
    public function index(Request $request)
    {
        $page = $request->input('page', 1);

        $query = RestInfos::with(['user', 'filtClass', 'filtLocation'])
            ->orderBy('created_at', 'desc');

        $perPage = 4;
        $restInfos = $query->paginate($perPage, ['*'], 'page', $page);

        return RestInfoResource::collection($restInfos);
    }

    public function show($id)
    {
        $restInfo = RestInfos::with(['user', 'filtClass', 'filtLocation'])->findOrFail($id);
        return new RestInfoResource($restInfo);
    }
}
