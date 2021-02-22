{{--

  <!-- Footer Top -->
  @php $parent_categories = App\Models\Category::getCategories(); @endphp
  <div class="footer-top">
    <div class="container">
      <div class="row">
        @foreach ($parent_categories as $parentCat)
        <div class="col-md-{{ $loop->index === 0 ? '6' : '2' }}">
          @if ($loop->index === 0)
            <img src="{{ asset('public/assets/images/categories/'.$parentCat->logo_image) }}" alt="{{ $parentCat->name }}" alt="" class="mb-3">
            <div class="row ml-3">
              @foreach ($parentCat->getChildCategories as $child)
              <div class="col-sm-3 mb-2" onclick="location.href='{{ route('category.child1.show', [$parentCat->slug, $child->slug]) }}'">
                <a href="{{ route('category.child1.show', [$parentCat->slug, $child->slug]) }}">
                  <i class="fa fa-chevron-right"></i> {{ $child->name }}
                </a>
              </div>
              @endforeach
            </div>
          @else
          <h4 class="mb-3">{{ $parentCat->name }}</h4>
          <ul>
            @foreach ($parentCat->getChildCategories as $child)
            <li onclick="location.href='{{ route('category.child1.show', [$parentCat->slug, $child->slug]) }}'">
              <a href="{{ route('category.child1.show', [$parentCat->slug, $child->slug]) }}">
                <i class="fa fa-chevron-right"></i> {{ $child->name }}
              </a>
            </li>
            @endforeach
          </ul>
          @endif

        </div>
        @endforeach
      </div>
    </div>
  </div> --}}
