<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Users;
use App\Models\RestInfos;
use App\Models\FiltClasses;
use App\Models\FiltLocations;
use Illuminate\Support\Facades\DB;

class RestInfosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 RestInfos 表
        $existingRestInfos = RestInfos::all();
        foreach ($existingRestInfos as $restinfo) {
            $restinfo->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
        $faker = Faker::create('zh_TW');
        // RestInfos::onlyTrashed()->forceDelete();

        // 獲取所有 role 為 restinfo 的 Users
        $users = Users::where('role', 'admin')->get();
        $RestInfosData = $users->map(function ($user) use ($faker) {
        $filtClasses = FiltClasses::all();
        $filtLocations = FiltLocations::all();
        $taichungDistricts = [
            '中區', '東區', '南區', '西區', '北區',
            '北屯區', '西屯區', '南屯區', '豐原區', '大里區',
            '太平區', '清水區', '沙鹿區', '大甲區', '東勢區',
            '梧棲區', '烏日區', '神岡區', '大肚區', '大雅區',
            '后里區', '霧峰區', '潭子區', '龍井區', '外埔區',
            '和平區', '石岡區', '大安區', '新社區',
        ];
        $randomDistrict = $faker->randomElement($taichungDistricts);
        $address = '台中市'.$randomDistrict.$faker->address;

        // 使用 map 將 Users 轉換成 RestInfos 的資料陣列
            return [
                'user_id' => $user->id,
                'f_c_id' => $faker->randomElement($filtClasses)->id,
                'f_l_id' => $faker->randomElement($filtLocations)->id,
                'status' => $faker->numberBetween(0,1),
                'href' => $faker->url,
                'avg_price' => $faker->numberBetween(30, 1000),
                'address' => $address,
                'weekday' => $faker->numberBetween(1, 5),
                'weekend' => $faker->numberBetween(6, 7),
                'wd_operating' => $faker->time('H:i:s'),
                'wd_close_1' => $faker->time('H:i:s'),
                'wd_close_2' => $faker->time('H:i:s'),
                'we_operating' => $faker->time('H:i:s'),
                'we_close_1' => $faker->time('H:i:s'),
                'we_close_2' => $faker->time('H:i:s'),
            ];
        });

        // 一次性插入所有 RestInfos 資料
        RestInfos::insert($RestInfosData->toArray());
    }
}

