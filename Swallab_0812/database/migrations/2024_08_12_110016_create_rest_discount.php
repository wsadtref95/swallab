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
        Schema::create('RestDiscount', function (Blueprint $table) {
            $table->id();
            $table->foreignId('r_i_id')->constrained('RestItems')->onUpdate('cascade')->onDelete('cascade');
            $table->integer('discount_price');
            $table->string('start_time')->default(now());
            $table->string('end_time')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('RestDiscount');
    }
};
