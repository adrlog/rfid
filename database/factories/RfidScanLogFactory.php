<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\RfidScanLog>
 */
class RfidScanLogFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $product = \App\Models\Product::inRandomOrder()->first();
        return [
            'rfid_code' => $product->rfid_code,
            'product_id' => $product->id,
            'scan_type' => $this->faker->randomElement(['check-in', 'check-out', 'inventory']),
            'scanned_by' => $this->faker->randomElement(['RFID Reader', 'Mobile App', 'Admin Panel']),
        ];
    }
}
