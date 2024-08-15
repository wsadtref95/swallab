<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Members;
use App\Models\MemberCreditCards;
use Illuminate\Support\Facades\DB;

class MemberCreditCardsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 MemberCreditCards 表
        $existingMemberCreditCards = MemberCreditCards::all();
        foreach ($existingMemberCreditCards as $creditCard) {
            $creditCard->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');
        $members = Members::all();

        // 使用 map 將 Users 轉換成 MemberCreditCards 的資料陣列
        $MemberCreditCardsData = $members->map(function ($member) use ($faker) {
            return [
                'm_id' => $member->id,
                'name' => $faker->creditCardType,
                'number' => $faker->creditCardNumber,
                'expiry_mm' => $faker->numberBetween(1, 12),
                'expiry_yyyy' => $faker->numberBetween(2022, 2030),
                'cvn' => $faker->numberBetween(100, 999),
            ];
        });

        // 一次性插入所有 MemberCreditCards 資料
        MemberCreditCards::insert($MemberCreditCardsData->toArray());
    }
}

