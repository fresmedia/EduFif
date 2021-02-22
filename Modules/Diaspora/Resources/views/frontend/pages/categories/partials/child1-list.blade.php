@php
    if(Route::is('index')){
        $class = "category-bg".($loop->index+1);
    }else{
        $class = "category-bg-default";
    }
@endphp
<div class="category-homepage {{ $class }}">
    <div class="container">
        <h2 class="pointer" onclick="location.href='{{ route('diaspora.category.show', $parent->slug) }}'"> {{ $parent->name }} </h2>

        <!-- Get Child Categories -->
        <div class="row">
            @foreach ($parent->getChildCategories as $child)
                <div class="col-sm-6 col-md-3 child-category-single" onclick="location.href='{{ route('diaspora.category.child1.show', [$parent->slug, $child->slug]) }}'">
                    <img src="{{ asset('public/assets/images/categories/'.$child->banner_image) }}" alt="{{ $child->name }}" class="img img-fluid">
                    <h3>{{ $child->name }}</h3>
                </div>
            @endforeach
        </div>

    </div>
</div>
