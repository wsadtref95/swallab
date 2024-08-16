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
        Schema::create('MemberNotes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('m_id')->constrained('Members')->onUpdate('cascade');
            $table->foreignId('r_id')->constrained('RestInfos')->onUpdate('cascade');
            $table->string('title');
            $table->string('main_photo');
            $table->text('content');
            $table->string('visited_at_date');
            $table->string('visited_at_time');
            $table->integer('count')->nullable();
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
        Schema::dropIfExists('MemberNotes');
    }
};
