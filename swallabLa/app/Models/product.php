<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    use HasFactory;


    // 定義資料表名稱（如果資料表名稱不符合 Laravel 的命名規則）
    protected $table = 'products';

    // 允許批量賦值的欄位
    protected $fillable = [
        'name',
        'image_url',
        'quantity',
    ];

    // 如果資料表有自動遞增 ID，則可以使用 $incrementing = true
    public $incrementing = true;

    // 如果 ID 欄位的資料類型不是整數，則可以設定 $keyType
    // protected $keyType = 'string'; // 如果主鍵是 string 類型

    // 如果資料表沒有 created_at 和 updated_at 欄位
    // public $timestamps = false;
}
