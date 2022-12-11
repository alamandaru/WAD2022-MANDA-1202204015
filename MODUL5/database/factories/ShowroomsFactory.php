<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Showrooms>
 */
class ShowroomsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'user_id' => mt_rand(1, 10),
            'name' => 'BMW',
            'owner' => fake()->lastName(),
            'brand' => 'BMW',
            'purchase_date' => fake()->date(),
            'description' => fake()->paragraph(),
            'image' => 'bmw.png',
            'status' => 'Lunas',
        ];
    }
}