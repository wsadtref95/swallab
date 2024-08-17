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
        Schema::create('RestItems', function (Blueprint $table) {
            $table->id();
            $table->foreignId('r_id')->constrained('RestInfos')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('f_s_d_id')->constrained('FiltSectionDemos')->onUpdate('cascade');
            $table->string('item_name');
            $table->integer('item_price');
            $table->longText('item_photo')->nullable();
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
        Schema::dropIfExists('RestItems');
    }
};
