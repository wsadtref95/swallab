<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderStatues extends Model
{
    use HasFactory;
    protected $table = 'orderStatuses';
    function orders()
    {
        return $this->hasMany(OrderInfos::class, 'o_s_id'); // 指向存放OrderInfos的o_s_id
    }
}
