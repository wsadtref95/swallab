<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RestCommentResource extends JsonResource
{
    public function toArray($request)
    {
        $memberReview = $this->when($this->member, function () {
            return $this->member->memberReviews
                ->where('r_id', $this->r_id)
                ->first();
        });

        return [
            'id' => $this->id,
            'content' => $this->content,
            'restaurant' => new RestaurantResource($this->whenLoaded('restInfo')),
            'member' => new MemberResource($this->whenLoaded('member')),
            'score' => $this->when($memberReview && !$memberReview instanceof \Illuminate\Http\Resources\MissingValue, function () use ($memberReview) {
                return $memberReview->score;
            }),
            'created_at' => optional($this->created_at)->toDateTimeString(),
            'updated_at' => optional($this->updated_at)->toDateTimeString(),
        ];
    }
}