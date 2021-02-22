@extends('frontend.layouts.master')

@section('title')
    Mirë se vini në Gjiganti.com
@endsection

@section('main-content')
    <div class="fres">
        <div class="view"
            style="background-image: url('{{ asset('public/images/foto1.jpg') }}'); min-height:400px; width:100%; background-repeat: no-repeat; background-position: top center;">
            <div class="container top2">
                <div class="row">
                    <div class="col-md-7 g-1 p-2">
                        <div class="home1 opc-90 bg-dark p-4">
                            <h1>Edufif - Education for integration of foreigners</h1>
                            <p>Edufif is a new project dedicated to integration of foreigners into a new society. This
                                project is very unique and contains information from all fields in need for daily life</p>
                        </div>
                    </div>
                    <div class="col-md-5 g-1 p-2">
                        <div class="row row-cols-2 row-cols-lg-2 g-2 g-lg-2 lang1">
                            <div class="col">
                                <div class="shadow p-2 border bg-white rounded">
                                    <h1>Country</h1>
                                </div>
                            </div>
                            <div class="col">
                                <div class="shadow p-2 border bg-white rounded">
                                    <h1>Languages</h1>
                                </div>
                            </div>
                            <div class="col">
                                <div class="shadow p-2 border bg-white rounded">
                                    <h2>Finland</h2>
                                </div>
                            </div>
                            <div class="col">
                                <div class="shadow p-2 border bg-white rounded"><a href="en/index.html"><img
                                            src="{{ asset('public/img/en.png') }}" width="25%"> EN (English)</a></div>
                            </div>
                            <div class="col"> </div>
                            <div class="col">
                                <div class="shadow p-2 border bg-white rounded"><a href="al/index.html"><img
                                            src="{{ asset('public/img/al.png') }}" width="25%"> AL (Shqip)</a></div>
                            </div>
                            <div class="col"> </div>
                            <div class="col">
                                <div class="shadow p-2 border bg-white rounded"><a href="fi/index.html"><img
                                            src="{{ asset('public/img/fi.png') }}" width="25%"> FI (Suomi)</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection()
