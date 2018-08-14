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
								<h1 class="text-white">Standard Post</h1>
								<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span><a href="#">Post Types </a><span class="lnr lnr-arrow-right"></span><a href="standard-post.html">Standard Post </a></p>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="news-tracker-wrap">
								<h6><span>Breaking News:</span>   <a href="#">Astronomy Binoculars A Great Alternative</a></h6>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End top-post Area -->
			<!-- Start latest-post Area -->
			<section class="latest-post-area pb-120">
				<div class="container no-padding">
					<div class="row">
						<div class="col-lg-8 post-list">
							<!-- Start single-post Area -->
							<div class="single-post-wrap">
								<div class="content-wrap">
									<ul class="tags">
										<li><a href="#">Food Habit</a></li>
									</ul>
									<a href="#">
										<h3>A Discount Toner Cartridge Is Better Than Ever.</h3>
									</a>
									<ul class="meta pb-20">
										<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
										<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>

									</ul>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
									</p>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus.
									</p>
								<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</blockquote>
								
								<div class="navigation-wrap justify-content-between d-flex">
									<a class="prev" href="#"><span class="lnr lnr-arrow-left"></span>Prev Post</a>
									<a class="next" href="#">Next Post<span class="lnr lnr-arrow-right"></span></a>
								</div>
								
							</div>
						</div>
						<!-- End single-post Area -->
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
		</section>
		<!-- End latest-post Area -->
	</div>    
@endsection
@section('footer')
	@include('theme::partials.footer')
@endsection