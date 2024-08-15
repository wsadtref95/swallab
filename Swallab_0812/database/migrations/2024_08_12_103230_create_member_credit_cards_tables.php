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
        Schema::create('MemberCreditCards', function (Blueprint $table) {
            $table->id();
            $table->foreignId('m_id')->constrained('Members')->onUpdate('cascade')->onDelete('cascade');
            $table->string('name');
            $table->string('number');
            $table->integer('expiry_mm');
            $table->integer('expiry_yyyy');
            $table->string('cvn');
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
        Schema::dropIfExists('MemberCreditCards');
    }
};
