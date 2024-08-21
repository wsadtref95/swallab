<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestFavoriteResource extends JsonResource
{
    public function toArray($request)
    {
        $avgRating = $this->when($this->restInfo && $this->restInfo->memberReviews, function () {
            return $this->restInfo->memberReviews->avg('score');});
            
        return [
            'id' => optional($this)->id,
            'restaurant' => new RestaurantResource(optional($this)->restInfo),
            'member' => new MemberResource(optional($this)->member),
            'average_rating' => $avgRating,
            'created_at' => optional(optional($this)->created_at)->toDateTimeString(),
        ];
    }
}