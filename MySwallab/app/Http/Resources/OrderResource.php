<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'status' => $this->orderStatus->status,
            'restaurant' => new RestaurantResource($this->restInfo),
            'member' => new MemberResource($this->member),
            'details' => OrderDetailResource::collection($this->orderDetails),
            'total_price' => $this->orderDetails->sum(function ($detail) {
                return $detail->item_price * $detail->item_qty;
            }),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}