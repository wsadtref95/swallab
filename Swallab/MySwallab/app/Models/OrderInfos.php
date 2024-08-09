<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderInfos extends Model
{
    use HasFactory;
    protected $table = 'OrderInfos';
    function details()
    {
        return $this->hasMany(OrderDetails::class, 'o_id');
    }

    function status()
    {
        return $this->belongsTo(OrderStatues::class, 'o_s_id'); // 指向存放oder_statues的id
    }
}
