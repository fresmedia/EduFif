@php
$advertisementPreview = null;
if (isset($advertisement) && !is_null($advertisement)) {
    $advertisementPreview = $advertisement;
}
@endphp
@if (!is_null($advertisementPreview))
    <div class="card pointer" onclick="location.href='{{ $advertisementPreview->url }}'" role="button">
        <img src="{{ asset('public/images/advertisements/' . $advertisementPreview->image) }}" width="100%"
            class="card-img-top" alt="">
        <div class="card-body">
            <h5 class="card-title">{{ $advertisementPreview->title }}</h5>
            <p class="card-text">{!! $advertisementPreview->description !!}</p>
        </div>
    </div>
@endif
