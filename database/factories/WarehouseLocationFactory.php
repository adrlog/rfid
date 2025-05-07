<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\WarehouseLocation>
 */
class WarehouseLocationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'aisle' => 'A' . $this->faker->numberBetween(1, 10),
            'shelf' => 'Shelf ' . $this->faker->numberBetween(1, 5),
            'bin_number' => 'Bin ' . $this->faker->numberBetween(1, 20),
        ];
    }
}
