<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FiltClass extends Model
{
    use HasFactory;
    protected $table = 'FiltClass';
    protected $primaryKey = 'id';
    protected $keyType = 'int';
}
