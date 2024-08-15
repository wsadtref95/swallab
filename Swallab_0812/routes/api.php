<?php
// routes/api.php

use App\Http\Controllers\ActivityController;
use Illuminate\Support\Facades\Route;
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::prefix('member-activity')->group(function () {
    Route::get('all', [ActivityController::class, 'all']);
    Route::get('OrderInfos', [ActivityController::class, 'orderInfos']);
    Route::get('MemberNotes', [ActivityController::class, 'memberNotes']);
    Route::get('Comments', [ActivityController::class, 'comments']);
    Route::get('Favorites', [ActivityController::class, 'favorites']);
    Route::put('RestComments/{id}', [ActivityController::class, 'updateRestComment']);
    Route::put('NotesComments/{id}', [ActivityController::class, 'updateNotesComment']);
    Route::delete('RestComments/{id}', [ActivityController::class, 'deleteRestComment']);
    Route::delete('NotesComments/{id}', [ActivityController::class, 'deleteNotesComment']);
    Route::delete('RestFavorites/{id}', [ActivityController::class, 'deleteRestFavorite']);
    Route::delete('NotesFavorites/{id}', [ActivityController::class, 'deleteNotesFavorite']);
});