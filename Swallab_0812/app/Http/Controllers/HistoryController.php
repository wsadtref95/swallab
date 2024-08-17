<?php
// app/Http/Controllers/ActivityController.php

namespace App\Http\Controllers;

use App\Http\Resources\OrderInfosResource;
use App\Http\Resources\MemberNotesResource;
use App\Http\Resources\RestCommentsResource;
use App\Http\Resources\NotesCommentsResource;
use App\Http\Resources\RestFavoritesResource;
use App\Http\Resources\NotesFavoritesResource;
use App\Models\OrderInfos;
use App\Models\MemberNotes;
use App\Models\RestComments;
use App\Models\NotesComments;
use App\Models\NotesFavorites;
use App\Models\RestFavorites;
use Illuminate\Http\Request;

class HistoryController extends Controller
{
    public function all()
    {
        $orderInfos = OrderInfosResource::collection(OrderInfos::with(['OrderDetails', 'OrderStatuses', 'Members', 'RestInfos'])->latest()->take(4)->get());
        $memberNotes = MemberNotesResource::collection(MemberNotes::with(['Members', 'RestInfos'])->latest()->take(4)->get());
        
        $restComments = RestCommentsResource::collection(RestComments::with(['Members', 'RestInfos'])->latest()->take(2)->get());
        $notesComments = NotesCommentsResource::collection(NotesComments::with(['Members', 'MemberNotes'])->latest()->take(2)->get());
        
        $restFavorites = RestFavoritesResource::collection(RestFavorites::with(['Members', 'RestInfos'])->latest()->take(2)->get());
        $notesFavorites = NotesFavoritesResource::collection(NotesFavorites::with(['Members', 'MemberNotes'])->latest()->take(2)->get());

        return response()->json([
            'OrderInfos' => $orderInfos,
            'MemberNotes' => $memberNotes,
            'Comments' => $restComments->concat($notesComments)->sortByDesc('created_at_date')->values(),
            'Favorites' => $restFavorites->concat($notesFavorites)->sortByDesc('created_at_date')->values(),
        ]);
    }

    public function orderInfos()
    {
        return OrderInfosResource::collection(OrderInfos::with(['OrderDetails', 'OrderStatuses', 'Members', 'RestInfos'])->latest()->paginate(4));
    }

    public function memberNotes()
    {
        return MemberNotesResource::collection(MemberNotes::with(['Members', 'RestInfos'])->latest()->paginate(4));
    }

    public function comments()
    {
        $restComments = RestCommentsResource::collection(RestComments::with(['Members', 'RestInfos'])->latest()->get());
        $notesComments = NotesCommentsResource::collection(NotesComments::with(['Members', 'MemberNotes'])->latest()->get());
        
        return $restComments->concat($notesComments)->sortByDesc('created_at_date')->paginate(4);
    }

    public function favorites()
    {
        $restFavorites = RestFavoritesResource::collection(RestFavorites::with(['Members', 'RestInfos'])->latest()->get());
        $notesFavorites = NotesFavoritesResource::collection(NotesFavorites::with(['Members', 'MemberNotes'])->latest()->get());
        
        return $restFavorites->concat($notesFavorites)->sortByDesc('created_at_date')->paginate(4);
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