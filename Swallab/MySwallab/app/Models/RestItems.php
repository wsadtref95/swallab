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

}
