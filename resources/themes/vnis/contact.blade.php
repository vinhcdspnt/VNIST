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
                            <h1 class="text-white">LIÊN HỆ VỚI CHÚNG TÔI</h1>
                            <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span><a href="contact.html">Contact Us </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End top-post Area -->
        <!-- Start contact-page Area -->
        <section class="contact-page-area pt-50 pb-120">
            <div class="container">
                <div class="row contact-wrap">
                    <div class="map-wrap" style="width:100%; height: 445px;" id="map"></div>
                    <div class="col-lg-3 d-flex flex-column address-wrap">
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <span class="lnr lnr-home"></span>
                            </div>
                            <div class="contact-details">
                                <h5>{{setting('contact.displayname')}}</h5>
                                <p>
                                    {{setting('contact.address')}} 
                                </p>
                            </div>
                        </div>
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <span class="lnr lnr-phone-handset"></span>
                            </div>
                            <div class="contact-details">
                                <h5>{{setting('contact.phone')}}</h5>
                                <p>{{setting('contact.hour')}}</p>
                            </div>
                        </div>
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <span class="lnr lnr-envelope"></span>
                            </div>
                            <div class="contact-details">
                                <h5>{{setting('contact.email')}}</h5>
                                <p>{{setting('contact.message')}}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <form class="form-area contact-form text-right" id="myForm" action="mail.php" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input name="name" placeholder="Nhập họ tên" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
                                    
                                    <input name="email" placeholder="Nhập email của bạn" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">
                                    <input name="subject" placeholder="Chủ đề" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" class="common-input mb-20 form-control" required="" type="text">
                                </div>
                                <div class="col-lg-6">
                                    <textarea class="common-textarea form-control" name="message" placeholder="Nội dung" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>
                                </div>
                                <div class="col-lg-12">
                                    <div class="alert-msg" style="text-align: left;"></div>
                                    <button class="primary-btn primary" style="float: right;">Gửi</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End contact-page Area -->
    </div>   
@endsection
@section('footer')
	@include('theme::partials.footer')
@endsection


	