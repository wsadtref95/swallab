<?php
namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderInfosResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'm_id' => $this->m_id, // 新增：加入 m_id 欄位
            'r_id' => $this->r_id, // 新增：加入 r_id 欄位
            'o_s_id' => $this->o_s_id,
            'utensils' => $this->utensils, // 新增：加入 utensils 欄位
            'booking_date' => $this->booking_date, // 新增：加入 booking_date 欄位
            'booking_time' => $this->booking_time, // 新增：加入 booking_time 欄位
            'restaurant_name' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->Users->name),
            'restaurant_image' => $this->whenLoaded('RestInfos', fn() => $this->RestInfos->Users->avatar),
            'items' => $this->whenLoaded('OrderDetails', function () {
                return $this->OrderDetails->map(function ($detail) {
                    return [
                        'item_name' => $detail->item_name,
                        'item_price' => $detail->item_price,
                        'item_qty' => $detail->item_qty,
                    ];
                });
            }),
            'total_price' => $this->whenLoaded('OrderDetails', function () {
                return $this->OrderDetails->sum(function ($detail) {
                    return $detail->item_price * $detail->item_qty;
                });
            }),
            'created_at_date' => $this->created_at_date,
            'created_at_time' => $this->created_at_time,
        ];
    }
}