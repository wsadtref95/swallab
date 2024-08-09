<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class FiltSectionDemos extends Model
{
    use HasFactory;
    protected $table = 'FiltSectionDemos';
    protected $primaryKey = 'id';
    protected $keyType = 'int';

    
    function own(): HasMany {
        return $this->hasMany(
            RestItems::class,
            'f_s_d_id',
            'id'
        );
    }

    

}
