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
        return $this->hasMany(OrderDetails::class, 'o_id'); // OrderInfos.id指向OrderDetails.o_id
    }

    function status()
    {
        return $this->belongsTo(OrderStatues::class, 'o_s_id'); // OrderInfos.o_s_id指向存放oder_statues的id
    }

    function members()
    {
        return $this->belongsTo(Members::class, 'm_id');
    }

    function restInfos()
    {
        return $this->belongsTo(RestInfos::class, 'r_id');
    }
}
