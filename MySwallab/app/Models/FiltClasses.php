<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FiltClasses extends Model
{
    use HasFactory;
    protected $table = 'FiltClasses';
    protected $primaryKey = 'id';
    protected $keyType = 'int';

    function restInfos()
    {
        return $this->hasMany(RestInfos::class, 'f_c_id');
    }
}
