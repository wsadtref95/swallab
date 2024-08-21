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
        Schema::create('SuitableFor', function (Blueprint $table) {
            $table->id();
            $table->foreignId('r_id')->constrained('RestInfos')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('f_p_id')->constrained('FiltPurposes')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
            $table->unique(['r_id', 'f_p_id']); // 複合索引
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('SuitableFor');
    }
};
