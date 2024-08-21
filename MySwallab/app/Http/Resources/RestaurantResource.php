<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestaurantResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'f_c_id' => $this->f_c_id,
            'f_l_id' => $this->f_l_id,
            'address' => $this->address,
            'status' => $this->status,
            'avg_price' => $this->avg_price,
            'href' => $this->href,
            'weekday' => $this->weekday,
            'weekend' => $this->weekend,
            'wd_operating' => $this->wd_operating,
            'we_operating' => $this->we_operating,
            'wd_close_1' => $this->wd_close_1,
            'wd_close_2' => $this->wd_close_2,
            'we_close_1' => $this->we_close_1,
            'we_close_2' => $this->we_close_2,
            'user' => [
                'name' => $this->users->name,
                'email' => $this->users->email,
                'avatar' => $this->users->avatar,
            ],
            'filt_class' => $this->filtClasses->restclass,
            'filt_location' => $this->filtLocations->location,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}