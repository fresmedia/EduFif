<?php

namespace Modules\Diaspora\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Page;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showParent($slug)
    {
        $category = Category::where('slug', $slug)
            ->where('status', 1)
            ->where('deleted_at', null)
            ->first();

        $latest_article = Page::where('category_id', $category->id)->orderBy('id', 'desc')->first();
        $articles = Page::where('category_id', $category->id)->select('id', 'category_id', 'slug', 'title')->orderBy('id', 'desc')->get();

        if (!is_null($category)) {
            $pages = [];
            foreach ($category->getChildCategories as $childCategory) {
                foreach ($childCategory->getChildCategories as $child2Category) {
                    foreach ($child2Category->pages as $page) {
                        $pages[] = $page;
                    }
                }
                foreach ($childCategory->pages as $page) {
                    $pages[] = $page;
                }
            }
            foreach ($category->pages as $page) {
                $pages[] = $page;
            }
            return view('diaspora::frontend.pages.categories.show-parent', compact('category', 'pages', 'latest_article', 'articles'));
        }
        return redirect()->route('diaspora.index');
    }

    public function showChild1($parent_slug, $slug)
    {
        $category = Category::where('slug', $slug)
            ->where('status', 1)
            ->where('deleted_at', null)
            ->first();
        if (!is_null($category)) {
            $pages = [];
            foreach ($category->getChildCategories as $childCategory) {
                foreach ($childCategory->pages as $page) {
                    $pages[] = $page;
                }
            }
            foreach ($category->pages as $page) {
                $pages[] = $page;
            }
            return view('frontend.pages.categories.show-child1', compact('category', 'pages'));
        }
        return redirect()->route('index');
    }

    public function showChild2($parent_main_slug, $parent_slug, $slug)
    {
        $category = Category::where('slug', $slug)
            ->where('status', 1)
            ->where('deleted_at', null)
            ->first();

        $parent_main = Category::where('slug', $parent_main_slug)
            ->where('status', 1)
            ->where('deleted_at', null)
            ->first();

        $parent = Category::where('slug', $parent_slug)
            ->where('status', 1)
            ->where('deleted_at', null)
            ->first();

        if (!is_null($category)) {
            $pages = $category->pages;
            return view('frontend.pages.categories.show-child2', compact('category', 'parent_main', 'parent',  'pages'));
        }
        return redirect()->route('index');
    }
}
