<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NotesFavoriteResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'note' => new NoteResource($this->memberNote),
            'member' => new MemberResource($this->member),
            'created_at' => $this->created_at,
        ];
    }
}