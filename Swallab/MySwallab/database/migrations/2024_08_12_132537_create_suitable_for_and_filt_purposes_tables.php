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
        Schema::create('FiltPurposes', function (Blueprint $table) {
            $table->id('f_p_id');  
            $table->string('purpose');
            $table->timestamps();
        });

        // 建立 SuitableFor 表
        Schema::create('SuitableFor', function (Blueprint $table) {
            $table->id();  
            $table->unsignedBigInteger('r_id');  
            $table->unsignedBigInteger('f_p_id');  

            $table->foreign('r_id')->references('id')->on('RestInfos')->onDelete('cascade');

            $table->foreign('f_p_id')->references('f_p_id')->on('FiltPurposes')->onDelete('cascade');  

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    
};
