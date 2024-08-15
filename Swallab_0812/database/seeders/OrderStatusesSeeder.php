<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\OrderStatuses;

Class OrderStatusesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

     public function run():void
    {

        $statuses = ['待確認','準備中','已完成'];

        foreach ($statuses as $status) {
            OrderStatuses::create(['status' => $status]);
        }
    }
}
