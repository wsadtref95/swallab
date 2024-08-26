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
        Schema::create('restaurant_info', function (Blueprint $table) {
            $table->id();
            $table->string('restaurant_name');
            $table->integer('restaurant_class');
            $table->string('phone');
            $table->string('address');
            $table->string('average_fee');
            $table->string('photo');
            $table->timestamps();
        });
    }
    

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('table_name');
    }
};
