<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\NotesFavorites;
use App\Models\Members;
use App\Models\MemberNotes;
use Illuminate\Support\Facades\DB;

class NotesFavoritesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');

        // 清空 NotesFavorites 表
        $existingNotesFavorites = NotesFavorites::all();
        foreach ($existingNotesFavorites as $notesfavorite) {
            $notesfavorite->delete();
        }
        // 重新開啟外鍵檢查
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        $faker = Faker::create('zh_TW');

        $members = Members::all();
        $membernotes = MemberNotes::all();
        for ($i = 1; $i <= 60; $i++) {
            $m_id = $faker->randomElement($members)->id;
            $m_n_id = $faker->randomElement($membernotes)->id;
        
            // 检查是否存在重复的组合
            $exists = NotesFavorites::where('m_id', $m_id)->where('m_n_id', $m_n_id)->exists();
        
            if (!$exists) {
                NotesFavorites::create([
                    'm_id' => $m_id,
                    'm_n_id' => $m_n_id,
                ]);
            }
        }
    }
}
