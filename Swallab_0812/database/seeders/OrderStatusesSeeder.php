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

        $statuses = ['unconfirmed','wip','done'];

        foreach ($statuses as $status) {
            OrderStatuses::create(['status' => $status]);
        }
    }
}
