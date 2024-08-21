<?php

namespace App\Http\Controllers;

use App\Models\OrderInfos;
use App\Models\MemberNotes;
use App\Models\RestComments;
use App\Models\NotesComments;
use App\Models\RestFavorites;
use App\Models\NotesFavorites;
use App\Http\Resources\OrderResource;
use App\Http\Resources\NoteResource;
use App\Http\Resources\NotesFavoriteResource;
use App\Http\Resources\NotesCommentResource;
use App\Http\Resources\RestFavoriteResource;
use App\Http\Resources\RestCommentResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ActivityController extends Controller
{
    public function all()
    {
        try {
            $orders = OrderResource::collection(OrderInfos::with([
                'OrderDetails',
                'OrderStatuses',
                'RestInfos.Users',
                'Members.Users'
            ])->latest()->take(4)->get());

            $notes = NoteResource::collection(MemberNotes::with([
                'RestInfos.Users',
                'RestInfos.RestItems',
                'RestInfos.RestDiscount',
                'RestInfos.FiltClasses',
                'NotesComments',
                'NotesFavorites',
                'Members.Users'
            ])->latest()->take(4)->get());

            $comments = RestCommentResource::collection(RestComments::with([
                'RestInfos.Users',
                'RestInfos.FiltClasses',
                'Members.Users',
                'Members.MemberReviews'
            ])->latest()->take(2)->get())
                ->concat(NotesCommentResource::collection(NotesComments::with([
                    'MemberNotes.RestInfos.Users',
                    'Members.Users'
                ])->latest()->take(2)->get()));

            $favorites = RestFavoriteResource::collection(RestFavorites::with([
                'RestInfos.Users',
                'RestInfos.FiltClasses',
                'RestInfos.MemberReviews'
            ])->latest()->take(2)->get())
                ->concat(NotesFavoriteResource::collection(NotesFavorites::with([
                    'MemberNotes.RestInfos.Users',
                    'MemberNotes.RestInfos.FiltClasses',
                    'MemberNotes.RestComments',
                    'MemberNotes.RestFavorites'
                ])->latest()->take(2)->get()));

            return response()->json([
                'orders' => $orders,
                'notes' => $notes,
                'comments' => $comments,
                'favorites' => $favorites,
            ]);
        } catch (\Exception $e) {
            return $orders;
            // return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function orderInfos(Request $request)
    {
        try {
            $result = OrderInfos::with([
                'RestInfos.Users',
                'OrderStatuses',
                'OrderDetails',
                // 'Members.Users'
            ])->latest()->paginate(4);
            return OrderResource::collection($result);
        } catch (\Exception $e) {
            return response()->json(['error' => '內部伺服器錯誤'], 500);
        }
    }

    public function memberNotes(Request $request)
    {
        try {
            $result = MemberNotes::with([
                'RestInfos.Users',
                'RestInfos.RestItems.RestDiscount',
                'RestInfos.FiltClasses',
                'NotesComments',
                'NotesFavorites',
                'Members.Users'
            ])->latest()->paginate(4);

            return response()->json([
                'query_result' => $result->toArray(),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'error' => '內部伺服器錯誤',
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ], 500);
        }
    }

    public function comments(Request $request)
    {
        try {
            $restComments = RestComments::with([
                'RestInfos.Users',
                'RestInfos.FiltClasses',
                'Members.Users',
                'Members.MemberReviews'
            ])->latest()->get();

            $notesComments = NotesComments::with([
                'MemberNotes.RestInfos.Users',
                'Members.Users'
            ])->latest()->get();

            $comments = $restComments->concat($notesComments)->sortByDesc('created_at')->take(4);

            $restCommentResources = RestCommentResource::collection($comments->filter(function ($comment) {
                return $comment instanceof RestComments;
            }));

            $notesCommentResources = NotesCommentResource::collection($comments->filter(function ($comment) {
                return $comment instanceof NotesComments;
            }));
            return response()->json([
                'restComments' => $restCommentResources,
                'notesComments' => $notesCommentResources
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'error' => '內部伺服器錯誤',
                'message' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString()
            ], 500);
        }
    }

    public function favorites(Request $request)
    {
        try {
            $restFavorites = RestFavorites::with([
                'RestInfos.Users',
                'RestInfos.FiltClasses',
                'RestInfos.MemberReviews',
                'RestInfos.SuitableFor.FiltPurposes'  // 添加這行以獲取適合的目的
            ])->latest()->get();

            $notesFavorites = NotesFavorites::with([
                'MemberNotes.RestInfos.Users',
                'MemberNotes.RestInfos.FiltClasses',
                'MemberNotes.NotesComments',
                'MemberNotes.NotesFavorites'
            ])->latest()->get();

            $favorites = $restFavorites->concat($notesFavorites)->sortByDesc('created_at')->take(4);

            $restFavoriteResources = RestFavoriteResource::collection($favorites->filter(function ($favorite) {
                return $favorite instanceof RestFavorites;
            }));

            $notesFavoriteResources = NotesFavoriteResource::collection($favorites->filter(function ($favorite) {
                return $favorite instanceof NotesFavorites;
            }));

            return response()->json([
                'restFavorites' => $restFavoriteResources,
                'notesFavorites' => $notesFavoriteResources
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'error' => '內部伺服器錯誤',
                'message' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString()
            ], 500);
        }
    }


    public function updateRestComment(Request $request, $id)
    {
        $comment = RestComments::findOrFail($id);
        $comment->update($request->all());
        return response()->json(['success' => true]);
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

