<?php

namespace App\Http\Controllers\Backend\Modules\Advertisement;

use App\Helpers\StringHelper;
use App\Helpers\UploadHelper;
use App\Http\Controllers\Controller;
use App\Models\Track;
use Illuminate\Http\Request;
use App\Models\Advertisement;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class AdvertisementsController extends Controller
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
    public function index($isTrashed = false)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.view')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }

        if (request()->ajax()) {
            if ($isTrashed) {
                $advertisements = Advertisement::orderBy('id', 'desc')
                    ->where('status', 0)
                    ->get();
            } else {
                $advertisements = Advertisement::orderBy('id', 'desc')
                    ->where('deleted_at', null)
                    ->where('status', 1)
                    ->get();
            }

            $datatable = DataTables::of($advertisements, $isTrashed)
                ->addIndexColumn()
                ->addColumn(
                    'action',
                    function ($row) use ($isTrashed) {
                        $csrf = "" . csrf_field() . "";
                        $method_delete = "" . method_field("delete") . "";
                        $method_put = "" . method_field("put") . "";

                        if ($row->deleted_at === null) {
                            $deleteRoute =  route('admin.advertisements.destroy', [$row->id]);
                            $html = '<a class="btn waves-effect waves-light btn-success btn-sm btn-circle" title="Edit Advertisement Details" href="' . route('admin.advertisements.edit', $row->id) . '"><i class="fa fa-edit"></i></a>';
                            $html .= '<a class="btn waves-effect waves-light btn-danger btn-sm btn-circle ml-2 text-white" title="Delete Admin" id="deleteItem' . $row->id . '"><i class="fa fa-trash"></i></a>';
                        } else {
                            $deleteRoute =  route('admin.advertisements.trashed.destroy', [$row->id]);
                            $revertRoute = route('admin.advertisements.trashed.revert', [$row->id]);

                            $html = '<a class="btn waves-effect waves-light btn-warning btn-sm btn-circle" title="Revert Back" id="revertItem' . $row->id . '"><i class="fa fa-check"></i></a>';
                            $html .= '
                            <form id="revertForm' . $row->id . '" action="' . $revertRoute . '" method="post" style="display:none">' . $csrf . $method_put . '
                                <button type="submit" class="btn waves-effect waves-light btn-rounded btn-success"><i
                                        class="fa fa-check"></i> Confirm Revert</button>
                                <button type="button" class="btn waves-effect waves-light btn-rounded btn-secondary" data-dismiss="modal"><i
                                        class="fa fa-times"></i> Cancel</button>
                            </form>';
                            $html .= '<a class="btn waves-effect waves-light btn-danger btn-sm btn-circle ml-2 text-white" title="Delete Advertisement Permanently" id="deleteItemPermanent' . $row->id . '"><i class="fa fa-trash"></i></a>';
                        }



                        $html .= '<script>
                            $("#deleteItem' . $row->id . '").click(function(){
                                swal.fire({ title: "Are you sure?",text: "Advertisement will be deleted as trashed !",type: "warning",showCancelButton: true,confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, delete it!"
                                }).then((result) => { if (result.value) {$("#deleteForm' . $row->id . '").submit();}})
                            });
                        </script>';

                        $html .= '<script>
                            $("#deleteItemPermanent' . $row->id . '").click(function(){
                                swal.fire({ title: "Are you sure?",text: "Advertisement will be deleted permanently, both from trash !",type: "warning",showCancelButton: true,confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, delete it!"
                                }).then((result) => { if (result.value) {$("#deletePermanentForm' . $row->id . '").submit();}})
                            });
                        </script>';

                        $html .= '<script>
                            $("#revertItem' . $row->id . '").click(function(){
                                swal.fire({ title: "Are you sure?",text: "Advertisement will be revert back from trash !",type: "warning",showCancelButton: true,confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, Revert Back!"
                                }).then((result) => { if (result.value) {$("#revertForm' . $row->id . '").submit();}})
                            });
                        </script>';

                        $html .= '
                            <form id="deleteForm' . $row->id . '" action="' . $deleteRoute . '" method="post" style="display:none">' . $csrf . $method_delete . '
                                <button type="submit" class="btn waves-effect waves-light btn-rounded btn-success"><i
                                        class="fa fa-check"></i> Confirm Delete</button>
                                <button type="button" class="btn waves-effect waves-light btn-rounded btn-secondary" data-dismiss="modal"><i
                                        class="fa fa-times"></i> Cancel</button>
                            </form>';

                        $html .= '
                            <form id="deletePermanentForm' . $row->id . '" action="' . $deleteRoute . '" method="post" style="display:none">' . $csrf . $method_delete . '
                                <button type="submit" class="btn waves-effect waves-light btn-rounded btn-success"><i
                                        class="fa fa-check"></i> Confirm Permanent Delete</button>
                                <button type="button" class="btn waves-effect waves-light btn-rounded btn-secondary" data-dismiss="modal"><i
                                        class="fa fa-times"></i> Cancel</button>
                            </form>';
                        return $html;
                    }
                )

                ->editColumn('title', function ($row) {
                    $html = $row->title;
                    $html .= "<br /><a target='_blank' href='".$row->url."'><i class='fa fa-link'></i> View</a>";
                    return $html;
                })
                ->editColumn('start_date', function ($row) {
                    $html = Carbon::parse($row->start_date)->format('d M Y');
                    return $html;
                })
                ->editColumn('expiry_date', function ($row) {
                    $html = Carbon::parse($row->expiry_date)->format('d M Y');
                    return $html;
                })
                ->editColumn('updated_at', function ($row) {
                    $html = Carbon::parse($row->updated_at)->format('d M Y');
                    $html .= " (".$row->updated_at->diffForHumans().")";
                    return $html;
                })
                ->editColumn('image', function ($row) {
                    if ($row->image != null) {
                        return "<img src='" . asset('public/images/advertisements/' . $row->image) . "' class='img img-display-list' />";
                    }
                    return '-';
                })
                ->editColumn('status', function ($row) {
                    if ($row->status) {
                        return '<span class="badge badge-success font-weight-100">Active</span>';
                    } else if ($row->deleted_at != null) {
                        return '<span class="badge badge-danger">Trashed</span>';
                    } else {
                        return '<span class="badge badge-warning">Inactive</span>';
                    }
                });
            $rawColumns = ['action', 'advertiser_name',  'title', 'start_date', 'expiry_date', 'updated_at', 'status', 'image'];
            return $datatable->rawColumns($rawColumns)
                ->make(true);
        }

        $count_advertisements = count(Advertisement::select('id')->get());
        $count_active_advertisements = count(Advertisement::select('id')->where('status', 1)->get());
        $count_trashed_advertisements = count(Advertisement::select('id')->where('deleted_at', '!=', null)->get());
        return view('backend.pages.advertisements.index', compact('count_advertisements', 'count_active_advertisements', 'count_trashed_advertisements'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pages.advertisements.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.create')) {
            return abort(403, 'You are not allowed to access this page !');
        }

        $request->validate([
            'title'  => 'required|max:100',
            'url'  => 'required|url|max:100',
            'advertiser_name'  => 'required|max:100',
            'start_date'  => 'required|max:100',
            'expiry_date'  => 'required|max:100',
            'slug'  => 'nullable|max:100|unique:advertisements,slug',
            'image'  => 'nullable|image',
        ]);

        try {
            DB::beginTransaction();
            $advertisement = new Advertisement();
            $advertisement->title = $request->title;
            $advertisement->advertiser_name = $request->advertiser_name;
            if ($request->slug) {
                $advertisement->slug = $request->slug;
            } else {
                $advertisement->slug = StringHelper::createSlug($request->title, 'Advertisement', 'slug', '');
            }
            if (!is_null($request->image)) {
                $advertisement->image = UploadHelper::upload('image', $request->image, $request->name . '-' . time() . '-banner', 'public/images/advertisements');
            }

            $advertisement->start_date = $request->start_date;
            $advertisement->expiry_date = $request->expiry_date;
            $advertisement->status = $request->status;
            $advertisement->url = $request->url;
            $advertisement->description = $request->description;
            $advertisement->created_at = Carbon::now();
            $advertisement->created_by = Auth::guard('admin')->id();
            $advertisement->updated_at = Carbon::now();
            $advertisement->save();

            Track::newTrack($advertisement->title, 'New Advertisement has been created');
            DB::commit();
            session()->flash('success', 'New Advertisement has been created successfully !!');
            return redirect()->route('admin.advertisements.index');
        } catch (\Exception $e) {
            session()->flash('sticky_error', $e->getMessage());
            DB::rollBack();
            return back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.edit')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }
        $advertisement = Advertisement::find($id);
        return view('backend.pages.advertisements.edit', compact('advertisement'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.edit')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }

        $advertisement = Advertisement::find($id);
        if (is_null($advertisement)) {
            session()->flash('error', "The page is not found !");
            return redirect()->route('admin.advertisements.index');
        }

        $request->validate([
            'title'  => 'required|max:100',
            'url'  => 'required|url|max:100',
            'advertiser_name'  => 'required|max:100',
            'expiry_date'  => 'required|max:100',
            'slug'  => 'required|max:100|unique:advertisements,slug,' . $advertisement->id,
            'image'  => 'nullable|image'
        ]);

        try {
            DB::beginTransaction();
            $advertisement->title = $request->title;
            $advertisement->advertiser_name = $request->advertiser_name;
            $advertisement->slug = $request->slug;

            if (!is_null($request->image)) {
                $advertisement->image = UploadHelper::update('image', $request->image, $request->name . '-' . time() . '-banner', 'public/images/advertisements', $advertisement->image);
            }

            $advertisement->start_date = $request->start_date;
            $advertisement->expiry_date = $request->expiry_date;
            $advertisement->status = $request->status;
            $advertisement->url = $request->url;
            $advertisement->description = $request->description;
            $advertisement->updated_at = Carbon::now();
            $advertisement->save();

            Track::newTrack($advertisement->title, 'Advertisement has been updated successfully !!');
            DB::commit();
            session()->flash('success', 'Advertisement has been updated successfully !!');
            return redirect()->route('admin.advertisements.index');
        } catch (\Exception $e) {
            session()->flash('sticky_error', $e->getMessage());
            DB::rollBack();
            return back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.delete')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }

        $advertisement = Advertisement::find($id);
        if (is_null($advertisement)) {
            session()->flash('error', "The page is not found !");
            return redirect()->route('admin.advertisements.trashed');
        }
        $advertisement->deleted_at = Carbon::now();
        $advertisement->deleted_by = Auth::guard('admin')->id();
        $advertisement->status = 0;
        $advertisement->save();

        session()->flash('success', 'Advertisement has been deleted successfully as trashed !!');
        return redirect()->route('admin.advertisements.trashed');
    }

    /**
     * revertFromTrash
     *
     * @param integer $id
     * @return Remove the item from trash to active -> make deleted_at = null
     */
    public function revertFromTrash($id)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.delete')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }

        $advertisement = Advertisement::find($id);
        if (is_null($advertisement)) {
            session()->flash('error', "The page is not found !");
            return redirect()->route('admin.advertisements.trashed');
        }
        $advertisement->deleted_at = null;
        $advertisement->deleted_by = null;
        $advertisement->save();

        session()->flash('success', 'Advertisement has been revert back successfully !!');
        return redirect()->route('admin.advertisements.trashed');
    }

    /**
     * destroyTrash
     *
     * @param integer $id
     * @return void Destroy the data permanently
     */
    public function destroyTrash($id)
    {
        if (is_null($this->user) || !$this->user->can('advertisement.delete')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }
        $advertisement = Advertisement::find($id);
        if (is_null($advertisement)) {
            session()->flash('error', "The page is not found !");
            return redirect()->route('admin.advertisements.trashed');
        }

        // Remove Images
        UploadHelper::deleteFile('public/assets/images/categorys/' . $advertisement->image);
        UploadHelper::deleteFile('public/assets/images/categorys/' . $advertisement->image);

        // Delete Advertisement permanently
        $advertisement->delete();

        session()->flash('success', 'Advertisement has been deleted permanently !!');
        return redirect()->route('admin.advertisements.trashed');
    }

    /**
     * trashed
     *
     * @return view the trashed data list -> which data status = 0 and deleted_at != null
     */
    public function trashed()
    {
        if (is_null($this->user) || !$this->user->can('advertisement.view')) {
            $message = 'You are not allowed to access this page !';
            return view('errors.403', compact('message'));
        }
        return $this->index(true);
    }
}
