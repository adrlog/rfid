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

            // Basic info
            $table->string('name')->nullable();
            $table->string('sku')->nullable();

            // Prices
            $table->string('origen_price')->nullable();
            $table->string('transporte')->nullable();
            $table->string('cost_price')->nullable();
            $table->string('minimum_price')->nullable();
            $table->string('regular_price')->nullable();
            $table->string('beneficio_web')->nullable();
            $table->string('beneficio_glovo')->nullable();

            // Type & status
            $table->string('type')->nullable();
            $table->boolean('published')->default(true);
            $table->string('visibility_in_catalog')->nullable();

            // Descriptions & SEO
            $table->text('description')->nullable();
            $table->string('meta_title')->nullable();
            $table->string('meta_description')->nullable();

            // Categories (kept as raw text for now)
            $table->string('categories')->nullable();
            $table->string('supercategories')->nullable();

            // Media & stock
            $table->text('images')->nullable();
            $table->string('stock')->default('0');

            // Identifiers
            $table->string('gtin')->nullable();
            $table->string('collection')->nullable();
            $table->string('variant_attribute_1')->nullable();
            $table->string('color')->nullable();

            // Brand, size, target audience
            $table->string('marca')->nullable();
            $table->string('item_size')->nullable();
            $table->string('publico_objetivo')->nullable();

            // Features & supplier
            $table->string('funciones')->nullable();
            $table->string('proveedor')->nullable();

            // Condition & extra info
            $table->string('condicion')->nullable();
            $table->text('informacion_adicional')->nullable();

            $table->string('rfid_code')->nullable(); // RFID UID
            $table->string('product_picture')->nullable(); // URL or path

            $table->foreignId('brand_id')->nullable()->constrained()->onDelete('set null');
            $table->foreignId('supplier_id')->nullable()->constrained()->onDelete('set null');
            $table->foreignId('warehouse_location_id')->nullable()->constrained()->onDelete('set null');

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
