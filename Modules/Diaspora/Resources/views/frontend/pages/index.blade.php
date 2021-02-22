@extends('frontend.layouts.master')

@section('title')
    Mirë se vini në Gjiganti.com
@endsection

@section('diaspora::diaspora-content')
    <div class="fres">
        <div class="view"
            style="background-image: url('{{ asset('public/images/fres1.jpg') }}'); min-height:400px; width:100%; background-repeat: repeat; background-position: top center;">
            <div class="container top2">
                <div class="row">
                    <div class="col-md-7 home">
                        <div class="home1 opc-70 bg-dark">
                            <h1>Quality</h1>
                            <p><img src="{{ asset('public/svg/ic4.svg') }}" width="20" height="20"> Your vision<br> <img src="{{ asset('public/svg/ic4.svg') }}"
                                    width="20" height="20"> Our mission<br><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20">
                                Solution driven by quality</p>
                        </div>
                    </div>
                    <div class="col-md-5 home">
                        <div class="home2 opc-80 bg-info">
                            <h2><img src="{{ asset('public/svg/ic4.svg') }}" width="20" height="20"> Web development</h2>
                            <h2><img src="{{ asset('public/svg/ic4.svg') }}" width="20" height="20"> Immigration issues</h2>
                            <h2><img src="{{ asset('public/svg/ic4.svg') }}" width="20" height="20"> Human resources</h2>
                            <h2><img src="{{ asset('public/svg/ic4.svg') }}" width="20" height="20"> Game industry</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="fres bg-light">
        <div class="container top1">
            <div class="row no-gutters">
                <div class="col-md-8">
                    <div class="row fm1">
                        <div class="view"
                            style="background-image: url('{{ asset('public/images/fres4.jpg') }}'); min-height:500px; width:100%; background-repeat: repeat; background-position: top center;">
                            <div class="col bg-light opc-60">
                                <h1>Services</h1>
                                <hr>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Websites</h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Branding</h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> SEO </h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Consulting</h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Copywriting </h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Graphic design</h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Digital marketing</h2>
                                <h2><img src="{{ asset('public/svg/ic2.svg') }}" width="20" height="20"> Immigration issues</h2>
                                <h2 style="text-align:center"><a href="en/services.html"
                                        class="btn bg-transparent border-fres2">Get in touch</a></h2>
                            </div>
                        </div>
                    </div>
                    <div class="container bg-white">
                        <div class="row">
                            <div class="col">
                                <div class="container3">
                                    <img src="{{ asset('public/img/fatonmedia.png') }}" width="100%" class="image3">
                                    <div class="overlay3">
                                        <div class="text3"><a href="https://www.fatonmedia.com" target="_blank"
                                                class="btn btn-fres1 border-white">www.fatonmedia.com</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="container3">
                                    <img src="{{ asset('public/img/dmwords.png') }}" width="100%" class="image3">
                                    <div class="overlay3">
                                        <div class="text3"><a href="https://www.dmwords.com" target="_blank"
                                                class="btn btn-fres1 border-white">www.dmwords.com</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col">
                                <div class="container3">
                                    <img src="{{ asset('public/img/gjiganti.png') }}" width="100%" class="image3">
                                    <div class="overlay3">
                                        <div class="text3"><a href="https://www.gjiganti.com" target="_blank"
                                                class="btn btn-fres1 border-white">www.gjiganti.com</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="container3">
                                    <img src="{{ asset('public/img/diaspora.png') }}" width="100%" class="image3">
                                    <div class="overlay3">
                                        <div class="text3"><a href="https://www.gjiganti.com/diaspora" target="_blank"
                                                class="btn btn-fres1 border-white">www.gjiganti.com/diaspora</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row dm1">
                        <div class="col bg-danger">
                            <h1>Do you want to learn a new language?</h1>
                            <h2> - What are your needs?</h2>
                            <h2> - Are you an immigrant, tourist or in business trip? </h2>
                            <p>DM words offer to you an easy way to learn a language for your needs in daily life and be
                                part of the new society through integration process.
                            </p>
                            <hr>
                            <h2 style="text-align:center"><a href="https://www.dmwords.com" target="_blank"
                                    class="btn bg-transparent border-white">Get in touch</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 bg-warning cm1 offset-md-0">
                    <h1>Timeline</h1>
                    <ul class="timeline">
                        <li>
                            <h2>06 / 2019 - FRES Media Oy</h2>
                            <p>All services and products were merging into a new company and restructuring as a group of
                                four operation fields (media, immigration issues, human resources and game industry)</p>
                        </li>
                        <li>
                            <h2>02 / 2018 DM words</h2>
                            <p>Dictionary with 1000 words was founded and launch the first demo version Finnish - English.
                            </p>
                        </li>
                        <li>
                            <h2>12 / 2017 - C Spinner</h2>
                            <p>We came up with the idea of the game and named "Cone Spinner" (C Spinner)</p>
                        </li>
                        <li>
                            <h2>11 / 2017 - Diaspora</h2>
                            <p>After 10 years with Emigranti, we change the name to Diaspora and made major changes</p>
                        </li>
                        <li>
                            <h2>01 / 2017 -"Emigranti" magazine</h2>
                            <p>Published a unique edition for Albanian-speakers in Finland related to integration,
                                communities, businesses and services.</p>
                        </li>
                        <li>
                            <h2>02 / 2013 - Faton Media</h2>
                            <p>Officially established Faton Media as a company and starting offering web-services for SME-s
                                in Finland</p>
                        </li>
                        <li>
                            <h2>01 / 2010 - Emigranti</h2>
                            <p>“Emigranti“ project expanded to 7 EU-countries and our portal became bigger in Albanian media
                                industry.</p>
                        </li>
                        <li>
                            <h2>08 / 2007 - Gjiganti.com</h2>
                            <p>Here we started our journey, launching the first version dedicated to Albanian-speakers in
                                Finland (Emigranti-project)</p>


                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div class="rent">
        <div class="container top1">
            <div class="row no-gutters bg-success">
                <div class="col-md-6">
                    <div class="row rent1">
                        <div class="col">
                            <h1>Do you need skilled workers?</h1>
                            <hr>
                            <h2><img src="{{ asset('public/svg/ic1.svg') }}" width="25" height="25"> Cleaning</h2>
                            <h2><img src="{{ asset('public/svg/ic1.svg') }}" width="25" height="25"> Logistics</h2>
                            <h2><img src="{{ asset('public/svg/ic1.svg') }}" width="25" height="25"> Restaurants</h2>
                            <h2><img src="{{ asset('public/svg/ic1.svg') }}" width="25" height="25"> Construction</h2>
                            <hr>
                            <h2 style="text-align:center"><a href="en/contact.html"
                                    class="btn bg-transparent border-white">Get in touch</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 fatonmedia2 offset-md-0">
                    <div class="row no-gutters">
                        <div class="col"><img src="{{ asset('public/images/cleaning.jpg') }}" width="100%"></div>
                        <div class="col"><img src="{{ asset('public/images/logistics.jpg') }}" width="100%"></div>
                    </div>
                    <div class="row no-gutters">
                        <div class="col"><img src="{{ asset('public/images/construction.jpg') }}" width="100%"></div>
                        <div class="col"><img src="{{ asset('public/images/restaurant.jpg') }}" width="100%"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="spinner">
        <div class="view"
            style="background-image: url('{{ asset('public/images/fres3.jpg') }}'); min-height:300px; width:100%; background-repeat: no-repeat; background-size: cover; background-position: center center;">
            <div class="container">
                <div class="row no-gutters top1">
                    <div class="col-md-6">
                        <img src="{{ asset('public/images/spinner11.png') }}" width="100%">
                    </div>
                    <div class="col-md-6 bg-info spinner2 foto2">
                        <h1 class="left2">C Spinner</h1>
                        <p class="left2">C Spinner is a playground game which aims to give to people fun and health
                            benefits. </p>

                        <div class="media left2">
                            <img src="{{ asset('public/images/spinner1.jpg') }}" width="25%" height="25%" class="mr-3">
                            <div class="media-body">
                                <h5 class="mt-0">Be with people</h5>
                                <h4>Help people to be closer and spend more time together</h4>
                            </div>
                        </div>

                        <div class="media left2">
                            <img src="{{ asset('public/images/spinner2.jpg') }}" width="25%" height="25%" class="mr-3">
                            <div class="media-body">
                                <h5 class="mt-0">Away from electronic devices</h5>
                                <h4>Gives a chance to get away from electronic devices and have fun with real games</h4>
                            </div>
                        </div>


                        <div class="media left2">
                            <img src="{{ asset('public/images/spinner3.jpg') }}" width="25%" height="25%" class="mr-3">
                            <div class="media-body">
                                <h5 class="mt-0">Relaxing</h5>
                                <h4>When the spinner is spinning, you feel relaxed paying attention</h4>
                            </div>
                        </div>

                        <div class="media left2">
                            <img src="{{ asset('public/images/spinner4.jpg') }}" width="25%" height="25%" class="mr-3">
                            <div class="media-body">
                                <h5 class="mt-0">Physical health</h5>
                                <h4>Your body is moving instead of staying in same place on digital games</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection()
