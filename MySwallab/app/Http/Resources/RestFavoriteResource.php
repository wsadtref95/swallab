<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestFavoriteResource extends JsonResource
{
    public function toArray($request)
    {
        $avgRating = $this->restInfo->memberReviews->avg('score');

        return [
            'id' => $this->id,
            'restaurant' => new RestaurantResource($this->restInfo),
            'member' => new MemberResource($this->member),
            'average_rating' => $avgRating,
            'created_at' => $this->created_at,
        ];
    }
}