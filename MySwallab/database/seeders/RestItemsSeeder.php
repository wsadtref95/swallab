<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\RestItems;
use App\Models\RestInfos;
use App\Models\FiltSectionDemos;
use Illuminate\Support\Facades\DB;

class RestItemsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 RestItems 表
        $existingRestItems = RestItems::all();
        foreach ($existingRestItems as $restitem) {
            $restitem->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');
        // RestItems::onlyTrashed()->forceDelete();

        // 獲取所有 role 為 restitem 的 Users
        $restinfos = RestInfos::all();
        $filtsectiondemos = FiltSectionDemos::all();

        for($i = 1; $i <= 60; $i++) {
            $image = imagecreatetruecolor(100, 100);
            $backgroundColor = imagecolorallocate($image, rand(0, 255), rand(0, 255), rand(0, 255));
            imagefill($image, 0, 0, $backgroundColor);

            ob_start();
            imagepng($image);
            $imageData = ob_get_clean();

            $base64Image = base64_encode($imageData);
            $fileName = 'avatar_' . time() . '_' . $i . '.jpg';

            DB::table('RestItems')->insert([

            'r_id' => $faker->randomElement($restinfos)->id,
            'f_s_d_id' => $faker->randomElement($filtsectiondemos)->id,
            'item_name' => $faker->name,
            'item_price' => $faker->numberBetween(1, 1000),
            // 'item_photo' => 'storage/' . $fileName,
            'item_photo' => 'data:image/png;base64,' . $base64Image,
            ]);
            imagedestroy($image);
        }
}
}

