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
            $table->foreignId('user_id')->constrained('Users')->cascadeOnUpdate()->cascadeOnDelete();
            $table->integer('sum_tracking')->default(0);
            $table->integer('sum_fans')->default(0);
            $table->string('thr_link')->nullable();
            $table->string('ins_link')->nullable();
            $table->string('fb_link')->nullable();
            $table->string('bio')->nullable();
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
        // DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
        Schema::dropIfExists('Members');
        // DB::statement('SET FOREIGN_KEY_CHECKS = 1;'); 
    }
};
