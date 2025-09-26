<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
        public function run(): void
    {
        User::create([
            'name' => 'Selene Rojas',
            'email' => 'selene@example.com',
            'password' => bcrypt('secret'),
        ]);

        User::create([
            'name' => 'Juan Pérez',
            'email' => 'juan@example.com',
            'password' => bcrypt('secret'),
        ]);

        User::create([
            'name' => 'María López',
            'email' => 'maria@example.com',
            'password' => bcrypt('secret'),
        ]);
        User::create([
            'name' => 'Dany Rojas',
            'email' => 'dany@example.com',
            'password' => bcrypt('secret'),
        ]);

        User::create([
            'name' => 'Juana Pérez',
            'email' => 'juanita@example.com',
            'password' => bcrypt('secret'),
        ]);

        User::create([
            'name' => 'Maríana López',
            'email' => 'mariana@example.com',
            'password' => bcrypt('secret'),
        ]);
    }
}
