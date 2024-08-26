<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\FiltClasses;

class RestInfos extends Model
{
    use HasFactory;
    protected $table = 'RestInfos';

    function users()
    {
        return $this->belongsTo(Users::class, 'user_id'); // 表示RestInfos.user_id連到Users.id
    }

    function filtClasses()
    {
        return $this->belongsTo(FiltClasses::class, 'f_c_id'); // 表示RestInfos.f_c_id連到filtClasses.id
    }

    function orderInfos()
    {
        return $this->hasMany(OrderInfos::class, 'r_id');
    }

    function memberNotes()
    {
        return $this->hasMany(MemberNotes::class, 'r_id');
    }

    function filtPurposes()
    {
        return $this->belongsToMany(
            FiltPurposes::class,
            'SuitableFor', // 要關聯到的 B 表
            'r_id', // 關聯表 B 與 A 表的關聯欄位 RestInfos.id = SuitableFor.r_id
            'f_p_id' // 關聯表 B 與 C 表的關聯欄位 FiltPurposes.f_p_id = FiltPurposes.id
        );
    }
}
