<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class NotesCommentResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'content' => $this->content,
            'note' => new NoteResource($this->memberNote),
            'member' => new MemberResource($this->member),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}