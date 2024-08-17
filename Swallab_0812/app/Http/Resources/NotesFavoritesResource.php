<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NotesFavoritesResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'm_id' => $this->m_id, // 新增：加入 m_id 欄位
            'm_n_id' => $this->m_n_id, // 新增：加入 m_n_id 欄位
            'note_title' => $this->whenLoaded('MemberNotes', fn() => $this->MemberNotes->title),
            'main_photo' => $this->whenLoaded('MemberNotes', fn() => $this->MemberNotes->main_photo),
            'restaurant_name' => $this->whenLoaded('MemberNotes', fn() => $this->MemberNotes->RestInfos->Users->name),
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}
