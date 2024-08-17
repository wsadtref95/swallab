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
        Schema::create('MemberReviews', function (Blueprint $table) {
            $table->id();
            $table->foreignId('m_id')->constrained('Members')->onDelete('cascade');
            $table->foreignId('r_id')->constrained('RestInfos')->onDelete('cascade');
            $table->integer('score');
            $table->string('created_at_date')->default(now());
            $table->string('created_at_time')->default(now());
            $table->string('updated_at_date')->nullable();
            $table->string('updated_at_time')->nullable();
            $table->timestamps();
            $table->unique(['m_id', 'r_id']); // 複合索引
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('MemberReviews');
    }
};
