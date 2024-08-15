<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\OrderInfos;
use App\Models\OrderDetails;
use Illuminate\Support\Facades\DB;

class OrderDetailsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 OrderDetails 表
        $existingOrderDetails = OrderDetails::all();
        foreach ($existingOrderDetails as $orderDetail) {
            $orderDetail->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
        $faker = Faker::create('zh_TW');
        $orderInfos = OrderInfos::all();

        // 使用 map 將 Users 轉換成 OrderDetails 的資料陣列
        $OrderDetailsData = $orderInfos->map(function ($orderInfo) use ($faker) {
            return [
                'o_id' => $orderInfo->id,
                'item_name' => $faker->name,
                'item_price' => $faker->numberBetween(1,1000),
                'item_qty' => $faker->numberBetween(1,20),
                'subtotal_price' => $faker->numberBetween(1,5000),
            ];
        });

        // 一次性插入所有 OrderDetails 資料
        OrderDetails::insert($OrderDetailsData->toArray());
    }
}

