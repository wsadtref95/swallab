<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberNotes extends Model
{
    use HasFactory;
    public function Members()
    {
        return $this->belongsTo(Members::class, 'm_id', 'id');
    }
    public function RestInfos()
    {
        return $this->belongsTo(RestInfos::class, 'r_id', 'id');
    }
    protected $table = 'MemberNotes';
    protected $fillable = [
        'title',
        'main_photo',
        'content',
        'visited_at_date',
        'visited_at_time',
    ];

}
