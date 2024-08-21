<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\FiltLocations;

class FiltLocationsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

     public function run():void
    {

        $locations = [
            '中區', '東區', '南區', '西區', '北區',
            '北屯區', '西屯區', '南屯區', '豐原區', '大里區',
            '太平區', '清水區', '沙鹿區', '大甲區', '東勢區',
            '梧棲區', '烏日區', '神岡區', '大肚區', '大雅區',
            '后里區', '霧峰區', '潭子區', '龍井區', '外埔區',
            '和平區', '石岡區', '大安區', '新社區',
    ];

        foreach ($locations as $location) {
            FiltLocations::create(['location' => $location]);
        }
    }
}
