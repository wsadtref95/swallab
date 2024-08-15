<?php
namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderInfosResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'restaurant_name' => $this->when('RestInfos', fn() => $this->RestInfos->name),
            'restaurant_image' => $this->when('RestInfos', fn() => $this->RestInfos->main_photo),
            'items' => $this->when('OrderDetails', function () {
                return $this->OrderDetails->map(function ($detail) {
                    return [
                        'item_name' => $detail->item_name,
                        'item_price' => $detail->item_price,
                        'item_qty' => $detail->item_qty,
                    ];
                });
            }),
            'total_price' => $this->when('OrderDetails', fn() => $this->OrderDetails->sum('subtotal_price')),
            'o_s_id' => $this->o_s_id,
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}