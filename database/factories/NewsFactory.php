<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\News;
use Faker\Generator as Faker;

$factory->define(News::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence,
        'text'=> $faker->sentence(150),
        'preview'=> $faker->sentence(255),
        'user_id' => 1,
        'image' => \Illuminate\Support\Facades\Storage::disk('public')->url('images/1.jpg')
    ];
});
