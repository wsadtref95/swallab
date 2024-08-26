<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FiltSectionDemos extends Model
{
    use HasFactory;
    protected $table = 'FiltSectionDemos';
    protected $primaryKey = 'id';
    protected $keyType = 'int';

    function restItems() 
    {
        return $this->hasMany(RestItems::class, 'f_s_d_id'); // FiltSectionDemos.id 會有很多 RestItems.f_s_d_id
    }

}
