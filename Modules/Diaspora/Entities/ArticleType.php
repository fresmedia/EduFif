<?php

namespace Modules\Diaspora\Entities;

use App\Models\Page;
use Illuminate\Database\Eloquent\Model;

class ArticleType extends Model
{

    protected $fillable = [
        'name'
    ];

    public function articles()
    {
        return $this->hasMany(Page::class, 'article_type_id', 'id');
    }
}
