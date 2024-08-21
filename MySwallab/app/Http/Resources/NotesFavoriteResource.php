<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NotesFavoriteResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'type' => 'noteFavorite',
            'note' => [
                'title' => $this->MemberNotes->title,
                'main_photo' => $this->MemberNotes->main_photo,
                'restaurant' => [
                    'name' => $this->MemberNotes->RestInfos->Users->name,
                    'address' => $this->MemberNotes->RestInfos->address,
                    'avg_price' => $this->MemberNotes->RestInfos->avg_price,
                    'wd_operating' => $this->MemberNotes->RestInfos->wd_operating,
                ],
            ],
            'created_at' => $this->created_at->toDateTimeString(),
        ];
    }
}