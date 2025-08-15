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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name');
            $table->string('internal_reference')->nullable()->unique();
            $table->string('ean_gtin_code')->nullable();
            $table->string('rfid_code')->unique(); // RFID UID
            $table->string('product_picture')->nullable(); // URL or path
            $table->text('brief_description')->nullable();
            $table->integer('current_stock')->default(0);
            $table->string('product_condition')->default('New');
            $table->decimal('cost_price', 10, 2)->nullable();
            $table->decimal('sale_price', 10, 2)->nullable();
            $table->datetime('date_of_discharge')->nullable();
            $table->datetime('last_updated_date')->nullable();
            $table->string('creator_user')->nullable();
            
            // Foreign Keys
            $table->foreignId('category_id')->nullable()->constrained()->onDelete('cascade');
            $table->foreignId('brand_id')->nullable()->constrained()->onDelete('cascade');
            $table->foreignId('supplier_id')->nullable()->constrained()->onDelete('cascade');
            $table->foreignId('warehouse_location_id')->nullable()->constrained()->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
