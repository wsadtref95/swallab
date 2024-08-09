<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    protected $table = 'OrderDetails';
    function orderInfo()
    {
        return $this->belongsTo(OrderInfos::class, 'o_id'); // 指向存放OrderInfos的o_id
    }
}
