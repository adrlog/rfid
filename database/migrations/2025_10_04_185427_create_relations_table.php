<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('relations', function (Blueprint $table) {
            $table->id();

            $table->foreignId('id_producto')
                  ->constrained('products')
                  ->onDelete('cascade');

            $table->foreignId('id_wherehouse')
                  ->constrained('warehouse_locations') // coincide con tu modelo WarehouseLocation
                  ->onDelete('cascade');

            $table->integer('cantidad')->default(1);
            $table->decimal('precio', 10, 2)->default(0.00);

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('relations');
    }
};
