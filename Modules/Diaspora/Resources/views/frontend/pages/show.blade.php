@extends('diaspora::layouts.master')

@section('title')
    {{ $page->title }} | {{ config('app.name') }}
@endsection

@section('social_meta_tags')
    <meta property="og:title" content="{{ $page->title }} | {{ config('app.name') }}">
    <meta property="og:description" content="{{ $page->meta_keywords }}">
    <meta property="og:image" content="{{ asset('public/assets/images/pages/' . $page->image) }}">
    <meta property="og:url" content="{{ route('diaspora.pages.show', [$category->slug, $page->slug]) }}">

    <meta name="twitter:title" content="{{ $page->title }} | {{ config('app.name') }} ">
    <meta name="twitter:description" content="{{ $page->meta_keywords }}">
    <meta name="twitter:image" content="{{ asset('public/assets/images/pages/' . $page->image) }}">
    <meta name="twitter:card" content="{{ asset('public/assets/images/pages/' . $page->image) }}">
@endsection

@section('diaspora::diaspora-content')

    <div class="fres">
        <div class="view"
            style="background-image: url('{{ asset('public/images/fres1.jpg') }}'); min-height:400px; width:100%; background-repeat: no-repeat; background-position: top center;">
            <div class="container top2">
                <div class="row">
                    <div class="col-md-8">
                        <div class="home2 bg-light">
                            <h2>{{ $page->title }}</h2>
                            {!! $page->description !!}
                        </div>
                    </div>
                    <div class="col-md-4 fixed">
                        @include('diaspora::frontend.pages.partials.article-sidebar-section')
                        <hr>
                        @include('diaspora::frontend.pages.partials.advertisement')
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection()
