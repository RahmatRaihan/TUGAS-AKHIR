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

        
    </style>
@endsection

@section('content')
<header class="page" style="margin-top: 140px;">
    <div class="page_main container-fluid">
        <div class="container">
            <h1 class="page_header" style="color: #ffffff;">Tentang Kami</h1>
            <p class="page_text" style="color: #ffffff;">___________________________________</p>
        </div>
    </div>
    <div class="container">
        <ul class="page_breadcrumbs d-flex flex-wrap">
            <li class="page_breadcrumbs-item">
                <a class="link" href="{{ url('/') }}">Beranda</a>
            </li>

            <li class="page_breadcrumbs-item current">
                <span>About</span>
            </li>
        </ul>
    </div>
</header>
<div class="instagram_slider-slide swiper-slide">
    <a class="link" href="https://www.instagram.com/makna_organizer/" target="_blank" rel="noopener norefferer">
        <picture>
            <source data-srcset="{{ asset('home4.jpg') }}" srcset="{{ asset('home4.jpg') }}"
                type="image/webp" />
            <img class="lazy" data-src="{{ asset('home4.jpg') }}"
                src="{{ asset('home4.jpg') }}" style="object-fit: cover; object-position: center 20%; height: 400px;"
                alt="instagram post" />
        </picture>
        <span class="overlay d-flex justify-content-center align-items-center">
            
            <i class="icon-instagram"></i>
        </span>
    </a>
</div>
<section class="instagram" style="margin-top: 100px;">
    <div class="container">
        <div class="instagram_header">
            <h2 class="instagram_header-title" style="color: #765827;">Tentang Kami</h2>
            <p class="instagram_header-text" style="color:black;">
                MAKNA ORGANIZER adalah salah satu wedding organizer yang ada di
                Pontianak - Kalimantan Barat yang membantu merencanakan dan
                mewujudkan impian acara pernikahan calon pengantin mulai dari persiapan, budgeting, pertemuan keluarga, 
                membuat janji temu dan menemani saat meeting dengan vendor, merekomendasikan vendor terbaik yang sesuai dengan harapan calon pengantin, menemani saat fitting baju pengantin, hingga mengkoordinir pelaksanaan pada saat acara dilaksanakan
            </p>
            
        </div>
    </div>
    >
    <div class="instagram_slider-slide swiper-slide">
        <a class="link" href="https://www.instagram.com/makna_organizer/" target="_blank" rel="noopener norefferer">
            <picture>
                <source data-srcset="{{ asset('tentang.jpg') }}" srcset="{{ asset('tentang.jpg') }}"
                    type="image/webp" />
                <img class="lazy" data-src="{{ asset('tentang.jpg') }}"
                    src="{{ asset('tentang.jpg') }}" style="object-fit: scale-down;height: 500px;"
                    alt="instagram post" />
            </picture>
            <span class="overlay d-flex justify-content-center align-items-center">
                
                <i class="icon-instagram"></i>
            </span>
        </a>
    </div>
    
    

    
</section>
@endsection

@section('js')
@endsection
