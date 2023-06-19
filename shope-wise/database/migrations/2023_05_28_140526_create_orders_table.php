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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('customer_id');
            $table->integer('order_total');
            $table->integer('tax_total');
            $table->integer('shipping_total');
            $table->integer('total_payable');
            $table->text('order_date');
            $table->text('order_timestamp');
            $table->string('order_status')->default('Pending');
            $table->text('delivery_address');
            $table->text('delivery_date')->nullable();
            $table->string('delivery_timestamp')->nullable();
            $table->string('delivery_status')->default('Pending');
            $table->string('payment_method');
            $table->text('payment_date')->nullable();
            $table->text('payment_timestamp')->nullable();
            $table->string('payment_status')->default('Pending');
            $table->string('currency')->nullable();
            $table->string('transaction')->nullable(4);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
