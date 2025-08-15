<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     */
    public function definition(): array
    {
        return [
            // Basic info
            'name' => $this->faker->words(3, true),
            'sku' => strtoupper($this->faker->bothify('SKU-####')),

            // Prices
            'origen_price' => $this->faker->randomFloat(2, 5, 500),
            'transporte' => $this->faker->randomFloat(2, 1, 50),
            'cost_price' => $this->faker->randomFloat(2, 5, 400),
            'minimum_price' => $this->faker->randomFloat(2, 5, 450),
            'regular_price' => $this->faker->randomFloat(2, 10, 600),
            'beneficio_web' => $this->faker->randomFloat(2, 1, 100),
            'beneficio_glovo' => $this->faker->randomFloat(2, 1, 100),

            // Type & status
            'type' => $this->faker->randomElement(['simple', 'variable']),
            'published' => $this->faker->boolean(80),
            'visibility_in_catalog' => $this->faker->randomElement(['visible', 'hidden', 'search']),

            // Descriptions & SEO
            'description' => $this->faker->paragraph(),
            'meta_title' => $this->faker->sentence(),
            'meta_description' => $this->faker->text(160),

            // Categories (raw text)
            'categories' => $this->faker->randomElement(['Electronics', 'Clothing', 'Home', 'Sports']),
            'supercategories' => $this->faker->randomElement(['Lifestyle', 'Tech', 'Fashion']),

            // Media & stock
            'images' => $this->faker->imageUrl(640, 480, 'product', true),
            'stock' => $this->faker->numberBetween(0, 500),

            // Identifiers
            'gtin' => $this->faker->ean13(),
            'collection' => $this->faker->word(),
            'variant_attribute_1' => $this->faker->word(),
            'color' => $this->faker->safeColorName(),

            // Brand, size, target audience
            'marca' => $this->faker->company(),
            'item_size' => $this->faker->randomElement(['S', 'M', 'L', 'XL']),
            'publico_objetivo' => $this->faker->randomElement(['Men', 'Women', 'Kids', 'Unisex']),

            // Features & supplier
            'funciones' => $this->faker->words(3, true),
            'proveedor' => $this->faker->company(),

            // Condition & extra info
            'condicion' => $this->faker->randomElement(['Nuevo', 'Usado']),
            'informacion_adicional' => $this->faker->paragraph(),

            'rfid_code' => $this->faker->unique()->uuid(),
            'product_picture' => null,
        ];
    }
}
