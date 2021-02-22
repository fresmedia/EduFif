<?php

namespace App\Http\Controllers\Backend\Modules\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Blog;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Page;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardsController extends Controller
{

    public $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (is_null($this->user)) {
            return redirect()->route('admin.login');
        }

        if (is_null($this->user) || !$this->user->can('dashboard.view')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }

        $count_admins = count(Admin::select('id')->get());
        $count_roles = count(DB::table('roles')->select('id')->get());
        $count_pages = count(Page::select('id')->get());
        $count_blogs = count(Blog::select('id')->get());
        $count_categories = count(Category::select('id')->get());
        $recent_pages = Page::where('deleted_at', null)->limit(10)->orderBy('id', 'desc')->get();
        $recent_blogs = Blog::where('deleted_at', null)->limit(10)->orderBy('id', 'desc')->get();
        return view('backend.pages.dashboard.index', compact('count_pages', 'count_blogs', 'count_admins', 'count_roles', 'count_categories', 'recent_pages', 'recent_blogs'));
    }
}
