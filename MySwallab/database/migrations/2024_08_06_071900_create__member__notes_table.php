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
        Schema::create('memberNotes', function (Blueprint $table) {
            $table->id();
            $table->integer('m_id');
            $table->integer('r_id');
            $table->string('title');
            $table->string('main_photo');
            $table->string('content');
            $table->string('visited_date');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('memberNotes');
    }
};
