<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestFavoritesResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'm_id' => $this->m_id, // 新增：加入 m_id 欄位
            'r_id' => $this->r_id, // 新增：加入 r_id 欄位
            'restaurant_name' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->Users->name),
            'main_photo' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->Users->avatar),
            'address' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->address),
            'avg_price' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->avg_price),
            'wd_operating' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->wd_operating),
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}