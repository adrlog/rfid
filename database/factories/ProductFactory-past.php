<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'product_name' => $this->faker->words(3, true),
            'internal_reference' => 'REF-' . $this->faker->unique()->randomNumber(5),
            'ean_gtin_code' => $this->faker->ean13(),
            'rfid_code' => $this->faker->unique()->uuid(),
            'product_picture' => null,
            'brief_description' => $this->faker->sentence(),
            'current_stock' => $this->faker->numberBetween(0, 100),
            'product_condition' => $this->faker->randomElement(['New', 'Damaged', 'Reserved']),
            'cost_price' => $this->faker->randomFloat(2, 10, 500),
            'sale_price' => $this->faker->randomFloat(2, 15, 600),
            'date_of_discharge' => $this->faker->dateTimeThisYear(),
            'last_updated_date' => $this->faker->dateTimeThisMonth(),
            'creator_user' => 'admin@filament.com',
            'category_id' => \App\Models\Category::factory(),
            'brand_id' => \App\Models\Brand::factory(),
            'supplier_id' => \App\Models\Supplier::factory(),
            'warehouse_location_id' => \App\Models\WarehouseLocation::factory(),
        ];
    }
}
