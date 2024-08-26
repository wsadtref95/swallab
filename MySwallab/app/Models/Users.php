<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

// class Users extends Model
class Users extends Authenticatable
{
    // use HasFactory;
    use Notifiable, HasApiTokens, HasFactory;
    protected $table = 'Users';

    protected $fillable = [
        'name',
        'role',
        'email',
        'password',
        'avatar',
        'phone'
    ];



    function restInfos()
    {
        return $this->hasOne(RestInfos::class, 'user_id'); // 指向restInfos.user_id
    }
}
