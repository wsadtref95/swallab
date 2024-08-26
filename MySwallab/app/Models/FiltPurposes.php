<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FiltPurposes extends Model
{
    use HasFactory;
    protected $table = 'FiltPurposes';

    function filtPurposes()
    {
        return $this->belongsToMany(RestInfos:: class,
            'SuitableFor',
            'f_p_id',
            'r_id'
    );
    }
}
