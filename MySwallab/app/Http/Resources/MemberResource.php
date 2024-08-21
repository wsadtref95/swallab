<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MemberResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'sum_tracking' => $this->sum_tracking,
            'sum_fans' => $this->sum_fans,
            'thr_link' => $this->thr_link,
            'ins_link' => $this->ins_link,
            'fb_link' => $this->fb_link,
            'bio' => $this->bio,
            'user' => [
                'name' => $this->users->name,
                'email' => $this->users->email,
                'avatar' => $this->users->avatar,
            ],
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}