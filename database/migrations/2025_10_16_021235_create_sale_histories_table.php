<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('sales_history', function (Blueprint $table) {
            $table->id();
            $table->string('sku');
            $table->foreignId('warehouse_location_id')
                  ->constrained('warehouse_locations')
                  ->onDelete('cascade');
            
            $table->date('fecha_venta');
            $table->integer('cantidad_venta');
            $table->timestamps();
            $table->index('sku');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('sales_history');
    }
};
