@extends('theme::master')
@section('page_title', setting('site.title'))
@section('header')
	@include('theme::partials.header')
@endsection
@section('content')
    <div class="site-main-container">
			<!-- Start top-post Area -->
			<section class="top-post-area pt-10">
                    <div class="container no-padding">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="hero-nav-area">
                                    <h1 class="text-white">DỊCH VỤ AN TOÀN THÔNG TIN</h1>
                                    <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span><a href="category.html">Dịch vụ an toàn thông tin</a></p>
                                </div>
                            </div>
                            {{-- <div class="col-lg-12">
                                <div class="news-tracker-wrap">
                                    <h6><span>Breaking News:</span>   <a href="#">Astronomy Binoculars A Great Alternative</a></h6>
                                </div>
                            </div> --}}
                        </div>
                    </div>
            </section>
			<!-- End top-post Area -->
			<!-- Start latest-post Area -->
			<section class="latest-post-area pb-120">
                    <div class="container no-padding">
                        <div class="row">
                            <div class="col-lg-8 post-list">
                                <!-- Start latest-post Area -->
                                <div class="latest-post-wrap">
                                    <h4 class="cat-title">Dịch vụ an toàn thông tin</h4>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/l1.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Lifestyle</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p class="excert">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/l2.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Science</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/l3.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Travel</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/l4.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Fashion</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/r1.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Science</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/r2.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Travel</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="single-latest-post row align-items-center">
                                        <div class="col-lg-5 post-left">
                                            <div class="feature-img relative">
                                                <div class="overlay overlay-bg"></div>
                                                <img class="img-fluid" src="vnis/img/r3.jpg" alt="">
                                            </div>
                                            <ul class="tags">
                                                <li><a href="#">Fashion</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-7 post-right">
                                            <a href="image-post.html">
                                                <h4>A Discount Toner Cartridge Is
                                                Better Than Ever.</h4>
                                            </a>
                                            <ul class="meta">
                                                <li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
                                                <li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
                                                <li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
                                            </ul>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="load-more">
                                        <a href="#" class="primary-btn">Load More Posts</a>
                                    </div>
                                    
                                </div>
                                <!-- End latest-post Area -->
                            </div>
                            <div class="col-lg-4">
                                    <div class="sidebars-area">
                                        @include('theme::partials.editor-pick-post')
                                        @include('theme::partials.most-popular')
                                        @include('theme::partials.social-networks')
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
		    <!-- End latest-post Area -->
	</div>    
@endsection
@section('footer')
	@include('theme::partials.footer')
@endsection