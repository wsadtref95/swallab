<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('zh_TW');

        $roles = ['admin', 'member'];

        $imageUrl = $faker->imageUrl(640, 480, 'people', true);

        // 假設圖片已經下載到本地 storage/app/public 目錄下
        // $imagePath = 'storage/app/public/' . basename($imageUrl);
        // 獲取圖片的二進位數據
        // $imageData = file_get_contents($imagePath);
        // 將圖片轉換為 Base64 編碼
        // $base64Image = base64_encode($imageData);
        
        for ($i = 0; $i < 100; $i++) {
            $fileName = 'avatar_' . time() . '_' . $i . '.jpg';
            DB::table('Users')->insert([

            // \App\Models\User::create([
                'role' => $faker->randomElement($roles),
                'email' => $faker->unique()->safeEmail,
                'password' => bcrypt('password'),
                'name' => $faker->name,
                // 'avatar' => $base64Image, // 加入此行
                'avatar' => 'storage/' . $fileName,
                // 'avatar' => null, // 加入此行
                'phone' => $faker->phoneNumber,
                'email_verified_at' => null,  // 加入此行
            ]);
    }
}}