<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderResource;
use App\Http\Resources\NoteResource;
use App\Http\Resources\RestCommentResource;
use App\Http\Resources\NotesCommentResource;
use App\Http\Resources\RestFavoriteResource;
use App\Http\Resources\NotesFavoriteResource;
use App\Models\OrderInfos;
use App\Models\MemberNotes;
use App\Models\RestComments;
use App\Models\NotesComments;
use App\Models\RestFavorites;
use App\Models\NotesFavorites;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ActivityController_v1 extends Controller
{
    public function all()
    {
        try {
            $orders = OrderResource::collection(OrderInfos::with([
                'RestInfos.Users',
                'OrderStatuses',
                'OrderDetails',
                'Members.Users',
            ])->latest()->take(4)->get());

            $notes = NoteResource::collection(MemberNotes::with([
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(4)->get());

            $comments = RestCommentResource::collection(RestComments::with([
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(2)->get())
                ->concat(NotesCommentResource::collection(NotesComments::with([
                    'MemberNotes.RestInfos.Users',
                    'Members.Users'
                ])->latest()->take(2)->get()));

            $favorites = RestFavoriteResource::collection(RestFavorites::with([
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(2)->get())
                ->concat(NotesFavoriteResource::collection(NotesFavorites::with([
                    'MemberNotes.RestInfos.Users',
                    'Members.Users'
                ])->latest()->take(2)->get()));

            return response()->json([
                'orders' => $orders,
                'notes' => $notes,
                'comments' => $comments,
                'favorites' => $favorites,
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function orderInfos(Request $request)
    {
        try {
            $result = OrderInfos::with([
                'RestInfos.Users',
                'OrderStatuses',
                'OrderDetails',
                'Members.Users',
            ])->latest()->paginate(4);
            return OrderResource::collection($result);
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function memberNotes(Request $request)
    {
        try {
            $result = MemberNotes::with(['RestInfos'])->latest()->paginate(4);
            return NoteResource::collection($result);
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function comments(Request $request)
    {
        try {
            $comments = RestComments::with(['RestInfos'])->latest()
                ->union(NotesComments::with(['MemberNotes'])->latest())
                ->paginate(4);
            return RestCommentResource::collection($comments);
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function favorites(Request $request)
    {
        try {
            $favorites = RestFavorites::with(['RestInfos'])->latest()
                ->union(NotesFavorites::with(['MemberNotes'])->latest())
                ->paginate(4);
            return RestFavoriteResource::collection($favorites);
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function updateRestComment(Request $request, $id)
    {
        $comment = RestComments::findOrFail($id);
        $comment->update($request->all());
        return new RestCommentResource($comment);
    }

    public function updateNotesComment(Request $request, $id)
    {
        $comment = NotesComments::findOrFail($id);
        $comment->update($request->all());
        return new NotesCommentResource($comment);
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