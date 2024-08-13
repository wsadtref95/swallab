<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuitableFor extends Model
{
    use HasFactory;
    protected $table = 'SuitableFor';

    protected $fillable = [
        'r_id',
        'f_p_id'
    ];
}
