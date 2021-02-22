<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('frontend.layouts.partials.styles')
    @include('frontend.layouts.partials.scripts')
    <title>Diaspora shqiptare</title>
    @php
        // $categories = diaspora
    @endphp
</head>

<body>
    @include('diaspora::layouts.partials.nav')
    @yield('diaspora::diaspora-content')

    {{-- Footer --}}
    <hr>
    <div class="fres">
        <div class="container">
            <div class="row">
                <div class="col-md-12 bg-warning top1">
                    <p>Here is coming footer with links and other privacy policy about our services.</p>
                </div>
            </div>
        </div>
    </div>

    <hr>
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <p> © 2021 Edufiff</p>
            </div>
            <div class="col-sm-4">

                <p>Designed by <a href="https://www.fatonmedia.com" target="_blank">faton MEDIA</a></p>
            </div>
        </div>
    </div>
    </div>
    {{-- <script src="../dist/js/bootstrap.bundle.min.js"></script> --}}
</body>

</html>
