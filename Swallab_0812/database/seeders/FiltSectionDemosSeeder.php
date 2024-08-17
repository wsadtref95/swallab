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

        $sections = [
            '多人饗宴','個人即享餐', '單點 丸子類', '單點 火鍋料',
            '單點 主食','單點 主菜', '單點 餃類', '單點 蔬菜類',
        ];
        $i = 30;
        foreach ($sections as $section) {
            FiltSectionDemos::create([
                'id' => $i++,
                'section' => $section
            ]);
        }
    }
}
