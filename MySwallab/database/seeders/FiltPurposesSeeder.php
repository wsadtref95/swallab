<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\FiltPurposes;

Class FiltPurposesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

     public function run():void
    {

        $purposes = ['約會','聚餐','商務','慶生','無障礙'];

        foreach ($purposes as $purpose) {
            FiltPurposes::create(['purpose' => $purpose]);
        }
    }
}
