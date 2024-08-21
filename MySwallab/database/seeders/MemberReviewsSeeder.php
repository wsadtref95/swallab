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

        $count = 0;
        for ($i = 0; $i < 50; $i++) {
            $m_id = $faker->randomElement($members)->id;
            $r_id = $faker->randomElement($restInfos)->id;

            // if (!MemberReviews::where('m_id', $m_id)->where('r_id', $r_id)->exists()) {
            //     DB::table('MemberReviews')->insert([
            //         'm_id' => $faker->randomElement($members)->id,
            //         'r_id' => $faker->randomElement($restInfos)->id,
            //         'score' => $faker->numberBetween(1, 5),
            //     ]);
            //     $count++;
            $exists = MemberReviews::where('m_id', $m_id)->where('r_id', $r_id)->exists();
            if (!$exists) {
                MemberReviews::create([
                    'm_id' => $m_id,
                    'r_id' => $r_id,
                    'score' => $faker->numberBetween(1,5),
                ]);
            
            }
        }
    }
}