<?php

namespace App\Http\Controllers;

use App\Http\Resources\FavoriteResource;
use App\Models\RestFavorite;
use App\Models\NotesFavorite;
use Illuminate\Http\Request;

class FavoriteController extends Controller
{
    public function index(Request $request)
    {
        $type = $request->input('type', 'all');
        $page = $request->input('page', 1);

        $query = $type === 'notes' ? NotesFavorite::with(['memberNote', 'restInfo']) : RestFavorite::with(['restInfo']);

        $query->orderBy('created_at', 'desc');

        $perPage = 4;
        $favorites = $query->paginate($perPage, ['*'], 'page', $page);

        return FavoriteResource::collection($favorites);
    }
}
