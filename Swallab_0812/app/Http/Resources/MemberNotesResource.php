<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MemberNotesResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'content' => $this->content,
            'main_photo' => $this->main_photo,
            'restaurant_name' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->name),
            'visited_at_date' => $this->visited_at_date,
            'visited_at_time' => $this->visited_at_time,
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}