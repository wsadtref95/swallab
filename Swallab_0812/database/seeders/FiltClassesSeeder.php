<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\FiltClasses;

class FiltClassesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

     public function run():void
    {

        $classes = ['火鍋', '燒烤', '居酒屋', '甜點', '拉麵'];

        foreach ($classes as $class) {
            FiltClasses::create(['class' => $class]);
        }
    }
}
