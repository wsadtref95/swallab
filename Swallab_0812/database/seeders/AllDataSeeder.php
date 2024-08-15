<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AllDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            UsersSeeder::class,
            FiltClassesSeeder::class,
            FiltLocationsSeeder::class,
            FiltPurposesSeeder::class,
            FiltSectionDemosSeeder::class,
            OrderStatusesSeeder::class,
            RestInfosSeeder::class,
            MembersSeeder::class,
            MemberCreditCardsSeeder::class,
            MemberNotesSeeder::class,
            MemberReviewsSeeder::class,
            NotesCommentsSeeder::class,
            RestCommentsSeeder::class,
            RestFavoritesSeeder::class,
            NotesFavoritesSeeder::class,
            RestItemsSeeder::class,
            RestDiscountSeeder::class,
            OrderInfosSeeder::class,
            OrderDetailsSeeder::class,
            SuitableForSeeder::class,
        ]);
    }
}
