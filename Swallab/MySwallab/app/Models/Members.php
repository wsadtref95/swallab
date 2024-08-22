<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Members extends Model
{
    use HasFactory;
    protected $table = 'Members';

    protected $fillable = [
        'user_id',
        'sum_tracking',
        'sum_fans',
        'ig_link',
        'fb_link',
        'threads_link',
        'bio',
        'created_at_date',
        'created_at_time',
        'updated_at_date',
        'updated_at_time',
    ];

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
