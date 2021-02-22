<?php

namespace Modules\Diaspora\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Modules\Diaspora\Entities\ArticleType;

class ArticleTypeSeederTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();
        ArticleType::insert([
            [
                'id' => 1,
                'name' => 'Integrimi'
            ],
            [
                'id' => 2,
                'name' => 'Komuniteti',
            ],
            [
                'id' => 3,
                'name' => 'KU & SI',
            ],
        ]);
    }
}
