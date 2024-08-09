<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\RestaurantClass;
use Illuminate\Database\Eloquent\Relations\HasMany;

class RestInfos extends Model
{
    use HasFactory;
    protected $table = 'RestInfos';

    function own(): HasMany {
        return $this->hasMany(
            FiltClass::class,
            'id', // restaurant_class.id 
            'restaurant_class' // restaurant_info.restaurant_class
        );
    }
}
