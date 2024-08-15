<?php
namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NotesCommentsResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'type' => 'note',
            'content' => $this->content,
            'note_title' => $this->whenLoaded('MemberNotes', fn() => $this->MemberNotes->title),
            'note_image' => $this->whenLoaded('MemberNotes', fn() => $this->MemberNotes->main_photo),
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}