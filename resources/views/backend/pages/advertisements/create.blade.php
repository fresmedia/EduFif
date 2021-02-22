@extends('backend.layouts.master')

@section('title')
    @include('backend.pages.advertisements.partials.title')
@endsection

@section('styles')

@endsection

@section('admin-content')
    @include('backend.pages.advertisements.partials.header-breadcrumbs')
    <div class="container-fluid">
        @include('backend.layouts.partials.messages')
        <div class="create-page">
            <form action="{{ route('admin.advertisements.store') }}" method="POST" enctype="multipart/form-data"
                data-parsley-validate data-parsley-focus="first">
                @csrf
                <div class="form-body">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label" for="title">Title <span class="required">*</span></label>
                                    <input type="text" class="form-control" id="title" name="title"
                                        value="{{ old('title') }}" placeholder="Enter Advertisement Title" required="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label" for="advertiser_name">Advertiser Name <span
                                            class="required">*</span></label>
                                    <input type="text" class="form-control" id="advertiser_name" name="advertiser_name"
                                        value="{{ old('advertiser_name') }}" placeholder="Enter Advertiser Name"
                                        required="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label" for="slug">Short URL <span
                                            class="optional">(optional)</span></label>
                                    <input type="text" class="form-control" id="slug" name="slug"
                                        value="{{ old('slug') }}"
                                        placeholder="Enter short url (Keep blank to auto generate)" />
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label" for="url">URL <span class="required">*</span></label>
                                    <input type="url" class="form-control" id="url" name="url" value="{{ old('url') }}"
                                        placeholder="Enter Advertisement Link" required="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label" for="start_date">Start Date <span
                                            class="required">*</span></label>
                                    <input type="date" class="form-control" id="start_date" name="start_date"
                                        value="{{ old('start_date') }}" placeholder="Enter Advertisement Start Date"
                                        required="" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label" for="expiry_date">Expiry Date <span
                                            class="required">*</span></label>
                                    <input type="date" class="form-control" id="expiry_date" name="expiry_date"
                                        value="{{ old('expiry_date') }}" placeholder="Enter Advertisement Expiry Date"
                                        required="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group has-success">
                                    <label class="control-label" for="status">Status <span class="required">*</span></label>
                                    <select class="form-control custom-select" id="status" name="status" required>
                                        <option value="1" {{ old('status') == '1' ? 'selected' : null }}>Active</option>
                                        <option value="0" {{ old('status') == '0' ? 'selected' : null }}>Inactive</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label" for="image">Image <span
                                            class="optional">(optional)</span></label>
                                    <input type="file" class="form-control dropify" data-height="70"
                                        data-allowed-file-extensions="png jpg jpeg webp" id="image" name="image"
                                        value="{{ old('image') }}" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label" for="description">Details <span
                                            class="optional">(optional)</span></label>
                                    <textarea type="text" class="form-control tinymce_simple" id="description"
                                        name="description" value="{{ old('description') }}"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="form-actions">
                            <div class="card-body">
                                <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>
                                <a href="{{ route('admin.advertisements.index') }}" class="btn btn-dark">Cancel</a>
                            </div>
                        </div>

                    </div>

                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    @include('backend.pages.advertisements.partials.scripts')
@endsection
