<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\OrderInfos;
use App\Models\Members;
use App\Models\RestInfos;
use App\Models\OrderStatuses;
use Illuminate\Support\Facades\DB;

class OrderInfosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 OrderInfos 表
        $existingOrderInfos = OrderInfos::all();
        foreach ($existingOrderInfos as $orderInfo) {
            $orderInfo->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $restInfos = RestInfos::all();
        $orderStatuses = OrderStatuses::all();

        for ($i = 1; $i <= 60; $i++) {
            OrderInfos::create([
                'm_id' => $faker->randomElement($members)->id,
                'r_id' => $faker->randomElement($restInfos)->id,
                'o_s_id' => $faker->randomElement($orderStatuses)->id,
                'utensils' => $faker->numberBetween(1, 0),
                'booking_date' => $faker->date(),
                'booking_time' => $faker->time(),
            ]);
        }
    }
}
