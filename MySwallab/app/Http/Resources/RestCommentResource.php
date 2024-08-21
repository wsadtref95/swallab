<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestCommentResource extends JsonResource
{
    public function toArray($request)
    {
        $memberReview = $this->member->memberReviews->where('r_id', $this->r_id)->first();

        return [
            'id' => $this->id,
            'content' => $this->content,
            'restaurant' => new RestaurantResource($this->restInfo),
            'member' => new MemberResource($this->member),
            'rating' => $memberReview ? $memberReview->score : null,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}