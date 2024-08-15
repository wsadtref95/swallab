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
        Schema::create('OrderDetails', function (Blueprint $table) {
            $table->id();
            $table->foreignId('o_id')->constrained('OrderInfos')->onUpdate('cascade')->onDelete('cascade');
            $table->string('item_name');
            $table->integer('item_price');
            $table->integer('item_qty');
            $table->integer('subtotal_price');
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
        Schema::dropIfExists('OrderDetails');
    }
};
