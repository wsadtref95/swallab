<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\RestItems;
use App\Models\RestDiscount;
use Illuminate\Support\Facades\DB;

class RestDiscountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 RestDiscount 表
        $existingRestDiscount = RestDiscount::all();
        foreach ($existingRestDiscount as $restDiscount) {
            $restDiscount->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $restItems = RestItems::all();

        for ($i = 1; $i <= 60; $i++) {
            $r_i_id = $faker->randomElement($restItems)->id;
                RestDiscount::create([
                    'r_i_id' => $r_i_id,
                    'discount_price' => $faker->randomFloat(0, 50),
                    'start_time' => $faker->dateTimeBetween('-1 years', 'now'),
                    'end_time' => $faker->dateTimeBetween('now', '+1 years'),
                ]);
            }
        }
    }
