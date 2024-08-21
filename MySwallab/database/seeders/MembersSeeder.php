<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Users;
use App\Models\Members;
use Illuminate\Support\Facades\DB;

class MembersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 Members 表
        $existingMembers = Members::all();
        foreach ($existingMembers as $member) {
            $member->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
        $faker = Faker::create('zh_TW');
        // Members::onlyTrashed()->forceDelete();

        // 獲取所有 role 為 member 的 Users
        $users = Users::where('role', 'member')->get();

        // 使用 map 將 Users 轉換成 Members 的資料陣列
        $membersData = $users->map(function ($user) use ($faker) {
            return [
                'user_id' => $user->id,
                'sum_tracking' => $faker->numberBetween(0, 100),
                'sum_fans' => $faker->numberBetween(0, 100),
                'thr_link' => $faker->url,
                'ins_link' => $faker->url,
                'fb_link' => $faker->url,
                'bio' => $faker->realText(200),
            ];
        });

        // 一次性插入所有 Members 資料
        Members::insert($membersData->toArray());
    }
}

