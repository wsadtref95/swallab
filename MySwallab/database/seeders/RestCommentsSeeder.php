<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\RestComments;
use App\Models\Members;
use App\Models\RestInfos;
use Illuminate\Support\Facades\DB;

class RestCommentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 RestComments 表
        $existingRestComments = RestComments::all();
        foreach ($existingRestComments as $restcomment) {
            $restcomment->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $restinfos = RestInfos::all();
        for ($i = 1; $i <= 60; $i++) {

            DB::table('RestComments')->insert([
                'm_id' => $faker->randomElement($members)->id,
                'r_id' => $faker->randomElement($restinfos)->id,
                'content' => $faker->text(100),
            ]);
        }
    }
}
