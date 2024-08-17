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
            $table->longText('main_photo');
            $table->string('per_cost')->nullable();
            $table->longText('content');
            $table->string('visited_date');
            $table->integer('count')->nullable();
            $table->string('created_at_date')->default(now());
            $table->string('created_at_time')->default(now());
            $table->string('updated_at_date')->nullable();
            $table->string('updated_at_time')->nullable();
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
