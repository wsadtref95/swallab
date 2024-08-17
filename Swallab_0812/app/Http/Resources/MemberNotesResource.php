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
            'restaurant_name' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->Users->name),
            'visited_date' => $this->visited_date, // 修改：從 visited_at_date 改為 visited_date
            'per_cost' => $this->per_cost, // 新增：加入 per_cost 欄位
            'count' => $this->count, // 新增：加入 count 欄位
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}
