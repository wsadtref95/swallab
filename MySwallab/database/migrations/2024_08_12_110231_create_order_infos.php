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
        Schema::create('OrderInfos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('m_id')->constrained('Members')->onUpdate('cascade');
            $table->foreignId('r_id')->constrained('RestInfos')->onUpdate('cascade');
            $table->foreignId('o_s_id')->constrained('OrderStatuses')->onUpdate('cascade');
            $table->boolean('utensils');
            $table->string('booking_date');
            $table->string('booking_time');
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
        Schema::dropIfExists('OrderInfos');
    }
};
