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
        Schema::create('NotesFavorites', function (Blueprint $table) {
            $table->id();
            $table->foreignId('m_id')->constrained('Members')->onDelete('cascade');
            $table->foreignId('m_n_id')->constrained('MemberNotes')->onDelete('cascade');
            $table->date('created_at_date')->default(now());
            $table->time('created_at_time')->default(now());  
            $table->timestamps();
            $table->unique(['m_id', 'm_n_id']); // 複合索引
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('NotesFavorites');
    }
};
