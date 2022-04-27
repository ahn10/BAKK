<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('admins')->insert([
            'name'     => 'Admin',
            'email'    => 'admin@bakk.com',
            'phone'    => '253123456',
            'password' => Hash::make('123456789')
        ]);
    }
}
