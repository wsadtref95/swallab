<?php

namespace App\Http\Controllers;

use App\Http\Resources\ReviewResource;
use App\Models\MemberReview;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function index(Request $request)
    {
        $type = $request->input('type', 'all');
        $page = $request->input('page', 1);

        $query = MemberReview::with(['member', 'restInfo'])
            ->orderBy('created_at', 'desc');

        // Add filters based on type if necessary
        if ($type !== 'all') {
            // Implement your filtering logic here based on $type
        }

        $perPage = 4;
        $reviews = $query->paginate($perPage, ['*'], 'page', $page);

        return ReviewResource::collection($reviews);
    }
}
