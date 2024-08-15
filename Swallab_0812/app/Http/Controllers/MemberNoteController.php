<?php

namespace App\Http\Controllers;

use App\Http\Resources\MemberNoteResource;
use App\Models\MemberNote;
use Illuminate\Http\Request;

class MemberNoteController extends Controller
{
    public function index(Request $request)
    {
        $type = $request->input('type', 'all');
        $page = $request->input('page', 1);

        $query = MemberNote::with(['member', 'restInfo'])
            ->orderBy('created_at', 'desc');

        // Add filters based on type if necessary
        if ($type !== 'all') {
            // Implement your filtering logic here based on $type
        }

        $perPage = 4;
        $memberNotes = $query->paginate($perPage, ['*'], 'page', $page);

        return MemberNoteResource::collection($memberNotes);
    }
}
