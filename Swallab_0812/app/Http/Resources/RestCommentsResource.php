<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestCommentsResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'type' => 'restaurant',
            'content' => $this->content,
            'restaurant_name' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->name),
            'restaurant_image' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->main_photo),
            'address' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->address),
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}