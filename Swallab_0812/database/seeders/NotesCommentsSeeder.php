<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\NotesComments;
use App\Models\Members;
use App\Models\MemberNotes;
use Illuminate\Support\Facades\DB;

class NotesCommentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 NotesComments 表
        $existingNotesComments = NotesComments::all();
        foreach ($existingNotesComments as $notescomment) {
            $notescomment->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $membernotes = MemberNotes::all();
        for ($i = 1; $i <= 60; $i++) {

            DB::table('NotesComments')->insert([
                'm_id' => $faker->randomElement($members)->id,
                'm_n_id' => $faker->randomElement($membernotes)->id,
                'content' => $faker->text(100),
            ]);
        }
    }
}
