<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    use HasFactory;
    protected $table = 'Users';

    function restInfos()
    {
        return $this->hasOne(RestInfos::class, 'user_id'); // 指向restInfos.user_id
    }
}
