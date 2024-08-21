<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NotesCommentResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => optional($this)->id,
            'content' => optional($this)->content,
            'note' => new NoteResource(optional($this)->memberNote),
            'member' => new MemberResource(optional($this)->member),
            'created_at' => optional(optional($this)->created_at)->toDateTimeString(),
            'updated_at' => optional(optional($this)->updated_at)->toDateTimeString(),
        ];
    }
}