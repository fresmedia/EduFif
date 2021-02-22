@extends('diaspora::layouts.master')

@section('title')
    {{ $category->name }} | {{ config('app.name') }}
@endsection

@section('diaspora::diaspora-content')

<main class="main">

  <!-- Page Content -->
  <div class="category-parent-area category-page">
    <div class="container">
      <div class="row">
            <div class="col-md-12 mt-5">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ route('index') }}">Gjiganti</a></li>
                  <li class="breadcrumb-item"><a href="{{ route('diaspora.category.show', $category->parent->slug) }}">{{ $category->parent->name }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ $category->name }}</li>
                </ol>
              </nav>
              <div class="category-child1-details" style="background-color: {{ $category->enable_bg ? '#'.$category->bg_color : 'transparent' }}; color: {{ $category->enable_bg ? '#'.$category->text_color : '#000' }}">
                <h2 class="text-center">{{ $category->name }}</h2>
                <div class="row">
                  <div class="col-md-6">
                    <img src="{{ asset('public/assets/images/categories/'.$category->banner_image) }}" alt="{{ $category->name }}" class="img img-fluid p-3">
                    <div class="p-3">
                      {!! $category->description !!}
                    </div>
                  </div>
                  <div class="col-md-6">
                    {{-- All Pages in this category --}}
                    <ul>
                      @foreach ($pages as $page)
                          <li>
                            <a href="{{ route('pages.show', [$category->parent->slug, $category->slug, $page->category->slug, $page->slug]) }}" style="color: {{ $category->enable_bg ? '#'.$category->text_color : '#000' }}"><i class="fa fa-chevron-right"></i> {{ $page->title }}</a>
                          </li>
                      @endforeach
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
  </div>
</main>
@endsection()
