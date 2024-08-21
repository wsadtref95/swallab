<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestaurantResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => optional($this)->id,
            'user_id' => optional($this)->user_id,
            'f_c_id' => optional($this)->f_c_id,
            'f_l_id' => optional($this)->f_l_id,
            'address' => optional($this)->address,
            'status' => optional($this)->status,
            'avg_price' => optional($this)->avg_price,
            'href' => optional($this)->href,
            'weekday' => optional($this)->weekday,
            'weekend' => optional($this)->weekend,
            'wd_operating' => optional($this)->wd_operating,
            'we_operating' => optional($this)->we_operating,
            'wd_close_1' => optional($this)->wd_close_1,
            'wd_close_2' => optional($this)->wd_close_2,
            'we_close_1' => optional($this)->we_close_1,
            'we_close_2' => optional($this)->we_close_2,
            'user' => [
                'name' => optional(optional($this)->users)->name,
                'email' => optional(optional($this)->users)->email,
                'avatar' => optional(optional($this)->users)->avatar,
            ],
            'filt_class' => optional(optional($this)->filtClasses)->restclass,
            'filt_location' => optional(optional($this)->filtLocations)->location,
            'created_at' => optional(optional($this)->created_at)->toDateTimeString(),
            'updated_at' => optional(optional($this)->updated_at)->toDateTimeString(),
        ];
    }
}