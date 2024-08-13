<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Members extends Model
{
    use HasFactory;
    protected $table = 'Members';

    function users()
    {
        return $this->belongsTo(Users::class, 'user_id');
    }

    function orderInfos()
    {
        return $this->hasMany(OrderInfos::class, 'm_id');
    }

    function memberNotes()
    {
        return $this->hasMany(MemberNotes::class, 'm_id');
    }
}
