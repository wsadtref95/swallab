<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\FiltClasses;

class FiltClassesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {

        $restclasses = ['火鍋', '燒肉', '拉麵', '居酒屋', '甜點'];

        foreach ($restclasses as $restclass) {
            FiltClasses::create(['restclass' => $restclass]);
        }
    }
}
