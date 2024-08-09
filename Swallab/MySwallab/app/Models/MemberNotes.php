<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberNotes extends Model
{
    use HasFactory;
    protected $table = 'membernotes';

    protected $fillable = [
        'm_id',
        'r_id',
        'title',
        'main_photo',
        'per_cost',
        'content',
        'visited_date',
    ];
}
