<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestDiscount extends Model
{
    use HasFactory;
    protected $table = 'RestDiscount';

    function restItems()
    {
        return $this->belongsTo(RestItems::class, 'r_i_id'); // RestDiscount.r_i_id 屬於 RestItems.id
    }
}
