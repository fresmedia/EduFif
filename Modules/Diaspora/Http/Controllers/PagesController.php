<?php

namespace Modules\Diaspora\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Category;
use App\Models\Page;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function showSinglePage($category_slug, $page_slug)
    {
        $category = Category::where('slug', $category_slug)
            ->where('status', 1)
            ->select('name', 'slug', 'id')
            ->first();
        $page = Page::where('slug', $page_slug)->where('status', 1)->first();

        if (!is_null($page) && !is_null($category)) {
            // Check if any advertisement linked or not
            $advertisement = null;
            if (!is_null($page->advertisement_ids)) {
                $advertisement = $this->getActiveAdvertisement($page->advertisement_ids);
            }
            return view('diaspora::frontend.pages.show', compact('category', 'page', 'advertisement'));
        }
        return redirect()->route('diaspora.index');
    }

    public function getActiveAdvertisement($advertisement_ids)
    {
        $advertisement = null;
        foreach ($advertisement_ids as $key => $value) {
            $advertisement = Advertisement::where('id', $value)
                ->where('status', 1)
                ->where('start_date', '<=', Carbon::now())
                ->where('expiry_date', '>=', Carbon::now())
                ->first();
            if (!is_null($advertisement)) {
                break;
            }
        }
        return $advertisement;
    }
}
