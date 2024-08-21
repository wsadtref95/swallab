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
            // $table->string('name');
            $table->string('infos');
            // $table->string('holder');
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
        Schema::dropIfExists('MemberCreditCards');
    }
};
