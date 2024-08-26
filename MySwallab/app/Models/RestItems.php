<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestItems extends Model
{
    use HasFactory;
    protected $table = 'RestItems';
    protected $primaryKey = 'id';
    protected $keyType = 'int';

    function filtSectionDemos()
    {
        return $this->belongsTo(FiltSectionDemos::class, 'f_s_d_id'); // RestItems.f_s_d_id 屬於 FiltSectionDemos.id
    }

    function restDiscount()
    {
        return $this->hasMany(RestDiscount::class, 'r_i_id'); // RestItems.id 會有很多 RestDiscount.r_i_id
    }
}
