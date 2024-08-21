<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    public function toArray($request)
    {
        $member = new MemberResource(optional($this)->member);
        return [
            'id' => optional($this)->id,
            'status' => optional(optional($this)->orderStatuses)->status,
            'restaurant' => new RestaurantResource(optional($this)->restInfo),
            'member' => $member,
            'name' => optional(optional($member->resource)->user)->name,
            'details' => OrderDetailResource::collection(optional($this)->orderDetails),
            'total_price' => $this->when(optional($this)->orderDetails, function () {
                return optional($this)->orderDetails->sum(function ($detail) {
                    return optional($detail)->item_price * optional($detail)->item_qty;
                });
            }),
            'created_at' => optional(optional($this)->created_at)->toDateTimeString(),
            'updated_at' => optional(optional($this)->updated_at)->toDateTimeString(),
        ];
    }
}