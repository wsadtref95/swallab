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
        Schema::create('Members', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->integer('sum_tracking');
            $table->integer('sum_fans');
            $table->string('thr_link');
            $table->string('ins_link');
            $table->string('fb_link');
            $table->string('bio');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Members');
    }
};
