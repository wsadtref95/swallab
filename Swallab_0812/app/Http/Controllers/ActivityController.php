<?php

namespace App\Http\Controllers;

use App\Models\OrderInfos;
use App\Models\MemberNotes;
use App\Models\RestComments;
use App\Models\NotesComments;
use App\Models\RestFavorites;
use App\Models\NotesFavorites;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Resources\RestCommentsResource;
use App\Http\Resources\NotesCommentsResource;

class ActivityController extends Controller
{
    public function all()
    {
        Log::info('Received request for all activities', ['url' => request()->fullUrl()]);

        try {
            $orders = OrderInfos::with(['RestInfos'])->latest()->take(4)->get()
            ->map(function ($order) {
                $order->type = 'order';
                return $order;
            });
            $notes = MemberNotes::with(['RestInfos'])->latest()->take(4)->get()
            ->map(function ($note) {
                $note->type = 'note';
                return $note;
            });
            $comments = RestComments::with(['RestInfos'])->latest()->take(2)
                ->union(NotesComments::with(['MemberNotes'])->latest()->take(2))
                ->get()
                ->map(function ($comment) {
                    $comment->type = 'comment';
                    return $comment;
                });
            $favorites = RestFavorites::with(['RestInfos'])->latest()->take(2)
                ->union(NotesFavorites::with(['MemberNotes'])->latest()->take(2))
                ->get()
                ->map(function ($favorite) {
                    $favorite->type = 'favorite';
                    return $favorite;
                });

            Log::info('All activities fetched successfully');

            return response()->json([
                'orders' => $orders,
                'notes' => $notes,
                'comments' => $comments,
                'favorites' => $favorites,
            ]);
        } catch (\Exception $e) {
            Log::error('Error fetching all activities: ' . $e->getMessage());
            return response()->json(['error' => 'Internal Server Error'], 500);
        }
    }

    public function orderInfos(Request $request)
    {
        return OrderInfos::with(['RestInfos'])->latest()->paginate(4);
    }

    public function memberNotes(Request $request)
    {
        return MemberNotes::with(['RestInfos'])->latest()->paginate(4);
    }

    public function comments(Request $request)
    {
        $comments = RestComments::with(['RestInfos'])->latest()
            ->union(NotesComments::with(['MemberNotes'])->latest())
            ->paginate(4);

        return $comments;
    }

    public function favorites(Request $request)
    {
        $favorites = RestFavorites::with(['RestInfos'])->latest()
            ->union(NotesFavorites::with(['MemberNotes'])->latest())
            ->paginate(4);

        return $favorites;
    }

    public function updateRestComment(Request $request, $id)
    {
        $comment = RestComments::findOrFail($id);
        $comment->update($request->all());
        return new RestCommentsResource($comment);
    }

    public function updateNotesComment(Request $request, $id)
    {
        $comment = NotesComments::findOrFail($id);
        $comment->update($request->all());
        return new NotesCommentsResource($comment);
    }

    public function deleteRestComment($id)
    {
        $comment = RestComments::findOrFail($id);
        $comment->delete();
        return response()->json(null, 204);
    }

    public function deleteNotesComment($id)
    {
        $comment = NotesComments::findOrFail($id);
        $comment->delete();
        return response()->json(null, 204);
    }

    public function deleteRestFavorite($id)
    {
        $favorite = RestFavorites::findOrFail($id);
        $favorite->delete();
        return response()->json(null, 204);
    }

    public function deleteNotesFavorite($id)
    {
        $favorite = NotesFavorites::findOrFail($id);
        $favorite->delete();
        return response()->json(null, 204);
    }
}