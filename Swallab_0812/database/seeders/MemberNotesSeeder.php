<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\MemberNotes;
use App\Models\Members;
use App\Models\RestInfos;
use Illuminate\Support\Facades\DB;

class MemberNotesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 MemberNotes 表
        $existingMemberNotes = MemberNotes::all();
        foreach ($existingMemberNotes as $membernote) {
            $membernote->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $restInfos = RestInfos::all();
        for ($i = 1; $i <= 60; $i++) {
            $fileName = 'avatar_' . time() . '_' . $i . '.jpg';

            DB::table('MemberNotes')->insert([
                'm_id' => $faker->randomElement($members)->id,
                'r_id' => $faker->randomElement($restInfos)->id,
                'title' => $faker->realText(20),
                'main_photo' => 'storage/' . $fileName,
                'content' => $faker->realText(600),
                'visited_at_date' => $faker->date('Y-m-d'),
                'visited_at_time' => $faker->time('H:i:s'),
                'count' => $faker->numberBetween(0,10000),
            ]);
        }
    }
}
