@extends('diaspora::layouts.master')

@section('title')
    {{ $category->name }} | {{ config('app.name') }}
@endsection

@section('diaspora::diaspora-content')
    {{-- <main class="main">
  <div class="category-parent-area category-page">
    <div class="container">
      <div class="row">
            <div class="col-md-12 mt-5">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ route('index') }}">Gjiganti</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ $category->name }}</li>
                </ol>
              </nav>
              <div class="category-child1-details" style="background-color: {{ $category->enable_bg ? '#'.$category->bg_color : 'transparent' }}; color: {{ $category->enable_bg ? '#'.$category->text_color : '#000' }}">
                <h2 class="text-center">{{ $category->name }}</h2>
                <div class="row">
                  <div class="col-md-6">
                    <img src="{{ asset('public/assets/images/categories/'.$category->banner_image) }}" alt="{{ $category->name }}" class="img img-fluid p-3">
                    <div class="p-3">
                      {!!  $category->description !!}
                    </div>
                  </div>
                  <div class="col-md-6">
                    <ul>
                      @foreach ($pages as $page)
                          <li>
                            <a href="{{ route('pages.show', [$page->category->parent->parent->slug, $page->category->parent->slug, $page->category->slug, $page->slug]) }}" style="color: {{ $category->enable_bg ? '#'.$category->text_color : '#000' }}"><i class="fa fa-chevron-right"></i> {{ $page->title }}</a>
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
  @php
      $parent = $category;
  @endphp
  @include('diaspora::frontend.pages.categories.partials.child1-list')
</main> --}}

    <div class="fres">
        <div class="view"
            style="background-image: url('{{ asset('public/assets/images/categories/' . $category->banner_image) }}'); min-height:400px; width:100%; background-repeat: no-repeat; background-position: top center;">
            <div class="container top2">
                <div class="row">
                    <div class="col-md-6 home">
                        @if (!is_null($latest_article))
                            <div class="home1 opc-80 bg-dark">
                                <h1>{{ $latest_article->title }}</h1>
                                <p>
                                    {!! substr(strip_tags($latest_article->description), 0, 100) !!}...
                                    {{-- Here comes the text of the story with few lines which represent the main content of the
                                    article marked with bold color then below will be the link for --}}

                                    <a href="{{ route('diaspora.pages.show', [$latest_article->category->slug, $latest_article->slug]) }}"
                                        class="btn bg-transparent border-white"> more info
                                    </a>
                                </p>
                            </div>
                        @endif

                    </div>
                    <div class="col-md-6">
                        @include('diaspora::frontend.pages.partials.article-sidebar-section')
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('diaspora::frontend.pages.partials.category-top-footer')
    <hr>
    @include('diaspora::frontend.pages.partials.category-bottom-footer')
@endsection()
