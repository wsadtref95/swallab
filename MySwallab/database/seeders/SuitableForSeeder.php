<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\RestInfos;
use App\Models\FiltPurposes;
use App\Models\SuitableFor;
use Illuminate\Support\Facades\DB;

class SuitableForSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 SuitableFor 表
        $existingSuitableFor = SuitableFor::all();
        foreach ($existingSuitableFor as $suitableFor) {
            $suitableFor->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $restInfos = RestInfos::all();
        $filtPurpose = FiltPurposes::all();

        for ($i = 1; $i <= 60; $i++) {
            $r_id = $faker->randomElement($restInfos)->id;
            $f_p_id = $faker->randomElement($filtPurpose)->id;
        
            // 检查是否存在重复的组合
            $exists = SuitableFor::where('r_id', $r_id)->where('f_p_id', $f_p_id)->exists();
        
            if (!$exists) {
                SuitableFor::create([
                    'r_id' => $r_id,
                    'f_p_id' => $f_p_id,
                ]);
            }
        }
    }
}
