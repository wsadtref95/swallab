<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestFavoritesResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'type' => 'restaurant',
            'restaurant_name' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->name),
            'main_photo' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->main_photo),
            'address' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->address),
            'avg_price' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->avg_price),
            'wd_operating' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->wd_operating),
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}