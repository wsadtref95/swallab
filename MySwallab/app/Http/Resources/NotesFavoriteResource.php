<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NotesFavoriteResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => optional($this)->id,
            'note' => new NoteResource(optional($this)->memberNote),
            'member' => new MemberResource(optional($this)->member),
            'created_at' => optional(optional($this)->created_at)->toDateTimeString(),
        ];
    }
}