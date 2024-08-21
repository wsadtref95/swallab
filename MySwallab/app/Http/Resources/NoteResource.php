<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NoteResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'content' => $this->content,
            'main_photo' => $this->main_photo,
            'restaurant' => new RestaurantResource($this->restInfo),
            'member' => new MemberResource($this->member),
            'comments' => NotesCommentResource::collection($this->notesComments),
            'favorites' => NotesFavoriteResource::collection($this->notesFavorites),
            'visited_date' => $this->visited_date,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}