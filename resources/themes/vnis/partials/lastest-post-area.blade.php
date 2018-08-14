<!-- Start latest-post Area -->
<section class="latest-post-area pb-120">
    <div class="container no-padding">
        <div class="row">
            <div class="col-lg-8 post-list">
                <!-- Start latest-post Area -->
                    @include('theme::partials.lastest-post')
                <!-- End latest-post Area -->
                
                <!-- Start banner-ads Area -->
                {{-- <div class="col-lg-12 ad-widget-wrap mt-30 mb-30">
                    <img class="img-fluid" src="vnis/img/banner-ad.jpg" alt="">
                </div> --}}
                <!-- End banner-ads Area -->
                <!-- Start popular-post Area -->
                    @include('theme::partials.popular-post')
                <!-- End popular-post Area -->
                <!-- Start relavent-story-post Area -->
                {{-- <div class="relavent-story-post-wrap mt-30">
                    <h4 class="title">Relavent Stories</h4>
                    <div class="relavent-story-list-wrap">
                        <div class="single-relavent-post row align-items-center">
                            <div class="col-lg-5 post-left">
                                <div class="feature-img relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="vnis/img/r1.jpg" alt="">
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
                        <div class="single-relavent-post row align-items-center">
                            <div class="col-lg-5 post-left">
                                <div class="feature-img relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="vnis/img/r2.jpg" alt="">
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
                                <p class="excert">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                </p>
                            </div>
                        </div>
                        <div class="single-relavent-post row align-items-center">
                            <div class="col-lg-5 post-left">
                                <div class="feature-img relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="vnis/img/r3.jpg" alt="">
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
                                <p class="excert">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                </p>
                            </div>
                        </div>
                    </div>
                </div> --}}
                <!-- End relavent-story-post Area -->
            </div>
            <div class="col-lg-4">
                <div class="sidebars-area">
                    @include('theme::partials.editor-pick-post')
                    <div class="single-sidebar-widget ads-widget">
                        <img class="img-fluid" src="vnis/img/sidebar-ads.jpg" alt="">
                    </div>
                    {{-- <div class="single-sidebar-widget newsletter-widget">
                        <h6 class="title">Newsletter</h6>
                        <p>
                            Here, I focus on a range of items
                            andfeatures that we use in life without
                            giving them a second thought.
                        </p>
                        <div class="form-group d-flex flex-row">
                            <div class="col-autos">
                                <div class="input-group">
                                    <input class="form-control" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" type="text">
                                </div>
                            </div>
                            <a href="#" class="bbtns">Subcribe</a>
                        </div>
                        <p>
                            You can unsubscribe us at any time
                        </p>
                    </div> --}}
                    @include('theme::partials.most-popular')
                    @include('theme::partials.social-networks')
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End latest-post Area -->