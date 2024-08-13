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
        return $this->belongsTo(OrderInfos::class, 'o_id'); // OrderDetails.o_id存放OrderInfos.id
    }
}
