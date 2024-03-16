@extends('front.layouts.master', ['keranjang' => $keranjang, 'web' => $web])

@section('title_menu')
    Paket Wedding
@endsection

@section('title')
    Data Paket Wedding
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('front/css/cart.min.css') }}" />

    <style>
        .page_main {
            padding: 60px 0;
            background: #765827;
            text-align: center;
            margin-bottom: 30px
        }

        .video-wrapper {
        /* border: 2px solid #ccc;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); */
        /* object-fit: flex;   */
        white-space: nowrap;
        }
        .video-container {
        display: inline-block;
        vertical-align: top;
        margin-right: 20px;
        }

        video {
            width: 480px;
            height: auto;
        }

        .description {
            font-size: 20px;
            color: #666;
            
        }
    </style>
@endsection

@section('content')
<header class="page" style="margin-top: 140px;">
    <div class="page_main container-fluid">
        <div class="container">
            <h1 class="page_header" style="color: #ffffff;">Client Review</h1>
            <p class="page_text" style="color: #ffffff;">___________________________________</p>
        </div>
    </div>
    <div class="container">
        <ul class="page_breadcrumbs d-flex flex-wrap">
            <li class="page_breadcrumbs-item">
                <a class="link" href="{{ url('/') }}">Beranda</a>
            </li>

            <li class="page_breadcrumbs-item current">
                <span>Client Review</span>
            </li>
        </ul>
    </div>
</header>
<section class="instagram" style="margin-top: 10px;">
    <div class="container">
        <div class="instagram_header">
            <h2 class="instagram_header-title" style="color: #765827;">Client Review</h2>
            <p class="instagram_header-text" style="color:black;">
                Berikut adalah beberapa review dari client kami
            </p>
            
        </div>
    </div>
    
<div class="container">
    <div class="video-wrapper">
        <div class="video-container">
                <video  controls muted >
                    <source src="{{ asset('LAMARAN.mp4') }}" type="video/mp4">   
                </video>
                <p class="description">Wedding A dan B</p>
        </div>   
        <div class="video-container">     
                <video  controls muted >
                    <source src="{{ asset('LAMARAN.mp4') }}" type="video/mp4">
                </video>
                <p class="description">Wedding C dan D</p>
        </div>
        <div class="video-container"></div>
                <video  controls muted >
                    <source src="{{ asset('LAMARAN.mp4') }}" type="video/mp4">
                </video>
                <p class="description">Wedding E dan F</p>
        </div>
        <div class="video-container">
                <video  controls muted >
                    <source src="{{ asset('LAMARAN.mp4') }}" type="video/mp4">
                </video>
                <p class="description">Wedding G dan H</p>
        </div>       
</div>
        
</div>
</section>

@endsection

@section('js')
@endsection