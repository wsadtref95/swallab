<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\FiltSectionDemos;

class FiltSectionDemosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {

        $sections = ['青菜', '餃類', '丸子', '飲料', '招牌'];

        foreach ($sections as $section) {
            FiltSectionDemos::create(['section' => $section]);
        }
    }
}
