<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\RestFavorites;
use App\Models\Members;
use App\Models\RestInfos;
use Illuminate\Support\Facades\DB;

class RestFavoritesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 RestFavorites 表
        $existingRestFavorites = RestFavorites::all();
        foreach ($existingRestFavorites as $restfavorite) {
            $restfavorite->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $restinfos = RestInfos::all();
        for ($i = 1; $i <= 60; $i++) {
            $m_id = $faker->randomElement($members)->id;
            $r_id = $faker->randomElement($restinfos)->id;
        
            // 检查是否存在重复的组合
            $exists = RestFavorites::where('m_id', $m_id)->where('r_id', $r_id)->exists();
        
            if (!$exists) {
                RestFavorites::create([
                    'm_id' => $m_id,
                    'r_id' => $r_id,
                ]);
            }
        }
    }
}
