<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\MemberReviews;
use App\Models\Members;
use App\Models\RestInfos;
use Illuminate\Support\Facades\DB;

class MemberReviewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 MemberReviews 表
        $existingMemberReviews = MemberReviews::all();
        foreach ($existingMemberReviews as $memberreview) {
            $memberreview->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $restInfos = RestInfos::all();
        for ($i = 1; $i <= 60; $i++) {
            $fileName = 'avatar_' . time() . '_' . $i . '.jpg';

            DB::table('MemberReviews')->insert([
                'm_id' => $faker->randomElement($members)->id,
                'r_id' => $faker->randomElement($restInfos)->id,
                'score' => $faker->numberBetween(1, 5),
            ]);
        }
    }
}
