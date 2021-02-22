<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Page;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * homePage
     *
     * HomePage of Application
     *
     * @return void
     */
    public function homePage()
    {
        $parent_categories = Category::getCategories();
        return view('frontend.pages.index', compact('parent_categories'));
    }
}
