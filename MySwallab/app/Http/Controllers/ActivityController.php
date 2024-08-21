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

class ActivityController extends Controller
{
    public function all()
    {
        try {
            $orders = OrderInfos::with([
                'RestInfos.Users',
                'OrderStatuses',
                'OrderDetails',
                'Members.Users',
            ])->latest()->take(4)->get()
                ->map(function ($order) {
                    $order->type = 'order';
                    $order->restaurant_name = $order->RestInfos->Users->name ?? "Unknown";
                    $order->total_price = $order->OrderDetails->sum(function ($detail) {
                        return $detail->item_price * $detail->item_qty;
                    });
                    return $order;
                });

            $notes = MemberNotes::with([
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(4)->get()
                ->map(function ($note) {
                    $note->type = 'note';
                    return $note;
                });

            $comments = RestComments::with([
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(2)
                ->union(NotesComments::with([
                    'MemberNotes.RestInfos.Users',
                    'Members.Users'
                ])->latest()->take(2))
                ->get()
                ->map(function ($comment) {
                    $comment->type = 'comment';
                    $comment->restaurant_name = $comment->RestInfos ? $comment->RestInfos->Users->name : $comment->MemberNotes->RestInfos->Users->name;
                    $comment->restaurant_image = $comment->RestInfos ? $comment->RestInfos->Users->avatar : $comment->MemberNotes->RestInfos->Users->avatar;
                    return $comment;
                });

            $favorites = RestFavorites::with([
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(2)
                ->union(NotesFavorites::with([
                    'MemberNotes.RestInfos.Users',
                    'Members.Users'
                ])->latest()->take(2))
                ->get()
                ->map(function ($favorite) {
                    $favorite->type = 'favorite';
                    $favorite->restaurant_name = $favorite->RestInfos ? $favorite->RestInfos->Users->name : $favorite->MemberNotes->RestInfos->Users->name;
                    $favorite->main_photo = $favorite->RestInfos ? $favorite->RestInfos->Users->avatar : $favorite->MemberNotes->main_photo;
                    $favorite->address = $favorite->RestInfos ? $favorite->RestInfos->address : null;
                    $favorite->avg_price = $favorite->RestInfos ? $favorite->RestInfos->avg_price : null;
                    $favorite->wd_operating = $favorite->RestInfos ? $favorite->RestInfos->wd_operating : null;
                    return $favorite;
                });

            return response()->json([
                'orders' => $orders,
                'notes' => $notes,
                'comments' => $comments,
                'favorites' => $favorites,
            ]);
        } catch (\Exception $e) {
            Log::error('Error in all method: ' . $e->getMessage());
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
            return $result;
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function memberNotes(Request $request)
    {
        try {
            $result = MemberNotes::with(['RestInfos'])->latest()->paginate(4);
            return $result;
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
            return $comments;
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
            return $favorites;
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function updateRestComment(Request $request, $id)
    {
        $comment = RestComments::findOrFail($id);
        $comment->update($request->all());
        return response()->json(['success'=> true]);
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