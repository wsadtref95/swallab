<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('RestInfos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('Users')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('f_c_id')->constrained('FiltClasses')->cascadeOnUpdate();
            $table->foreignId('f_l_id')->constrained('FiltLocations')->cascadeOnUpdate();
            $table->string('href');
            $table->integer('avg_price');
            $table->string('address');
            $table->string('weekday')->default('沒有營業');
            $table->string('weekend')->default('沒有營業');
            $table->string('wd_operating')->nullable();
            $table->string('we_operating')->nullable();
            $table->string('wd_close_1')->nullable();
            $table->string('wd_close_2')->nullable();
            $table->string('we_close_1')->nullable();
            $table->string('we_close_2')->nullable();
            $table->date('created_at_date')->default(now());
            $table->time('created_at_time')->default(now());
            $table->date('updated_at_date')->nullable();
            $table->time('updated_at_time')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('RestInfos');
    }
};
