<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Members extends Model
{
    // use SoftDeletes;

    use HasFactory;
    public function Users()
    {
        return $this->belongsTo(Users::class, 'user_id', 'id');
    }
    protected $fillable = [
        'sum_tracking',
        'sum_fans',
        'thr_link',
        'ins_link',
        'fb_link',
        'bio',
    ];
}
