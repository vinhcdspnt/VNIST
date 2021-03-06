@extends('theme::layouts.index')
@section('page_title', setting('site.title').' | Notifi | Single Post')
@section('header')
    @include('theme::partials.notifi.header')
@endsection
@section('breadcum')
    @include('theme::partials.notifi.post.breadcum')
@endsection
@section('content')
    <section class="single_post_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                        <div class="single_blog_post_box">
                                <div class="blog_post_photo">
                                    <img src="/img/latest_news_post_1.jpg" alt="">
                                    <div class="blog_post_date_caption">
                                        <span>08 Apr</span>
                                    </div>
                                </div>
                                <div class="blog_post_txt">
                                    <div class="blog_post_heading">
                                        <h2><a href="single-post.html">your way in the world today takes everything you've got</a></h2>
                                        <p>Posted By : Admin</p>
                                    </div>
                                    <div class="blog_post_content">
                                        <p>Buck Rogers to Earth five-hundred years later. Now were up in the big leagues getting' our turn at bat. The movie star the professor and Mary Ann here on Gilligans Isle. So get a witch's shawl on a broomstick you can crawl on. Were gonna pay a call on the Addams Family." The mate was a mighty sailin' man the Skipper brave and sure. </p>
                                        <p>We finally got a piece of the pie. You wanna be where you can see our troubles are all the same. You wanna be where everybody knows Your name. Love exciting and new. Come aboard were expecting you. Love life's sweetest reward Let it flow it floats back to you. And we'll do it our way yes our way. Make all our dreams come true for me and you., Straightnin' the curves. Flatnin' the hills Someday the mountain might get ‘em but the law never will.</p>
                                        <blockquote>Maecenas interdum tortor quis rhoncus imperdiet. Vestib ulvulputate lacus vitae ligula aliquet mattis uspendisse convallis pulvinar velit, at sodales libero tempus vitae. Etiam dapib</blockquote>
                                        <p> Just sit right back and you'll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship. That this group would somehow form a family that's the way we all became the Brady Bunch. Well the first thing you know ol' Jeds a millionaire. Kinfolk said Jed move away from there</p>
                                    </div>
                                    <div class="blog_post_footer">
                                        <ul>
                                            <li><i class="pe-7s-comment"></i>11 Comments</li>
                                            <li><i class="pe-7s-like"></i>13 Likes</li>
                                            <li><i class="pe-7s-look"></i>19 Viewers</li>
                                            <li class="blog_post_footer_right_item"><i class="pe-7s-ticket"></i>University, courses, college</li>
                                        </ul>
                                    </div>
                                </div>
                        </div>                    
                </div> 
                <div class="col-md-4 col-sm-7">
                    <aside>
                        <div class="right_sidebar">
                            <div class="all_right_widgets">
                                <div class="sing_right_widget">
                                    <div class="sing_right_widg_content">
                                        <form action="#">
                                            <input type="text" placeholder="Search">
                                            <input type="submit" value="">
                                        </form>
                                    </div>
                                    <div class="sing_right_widget">
                                            <h2>Latest News</h2>
                                            <div class="sing_right_widg_content">
                                                <ul class="lat_news_right">
                                                    <li>
                                                        <img src="/img/right_lat_news_1.jpg" alt="">
                                                        <div class="lat_news_right_con">
                                                            <h3><a href="single-post.html">Mister we could use a man like Herbert</a></h3>
                                                            <h4>April 19, 2015</h4>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <img src="/img/right_lat_news_2.jpg" alt="">
                                                        <div class="lat_news_right_con">
                                                            <h3><a href="single-post.html">e know Flipper lives in a world full of wonder</a></h3>
                                                            <h4>April 12, 2015</h4>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <img src="/img/right_lat_news_3.jpg" alt="">
                                                        <div class="lat_news_right_con">
                                                            <h3><a href="single-post.html">very best to make the others comfortable</a></h3>
                                                            <h4>April 12, 2015</h4>
                                                        </div>
                                                    </li>
                                                    <li>
                                                            <img src="/img/right_lat_news_3.jpg" alt="">
                                                            <div class="lat_news_right_con">
                                                                <h3><a href="single-post.html">very best to make the others comfortable</a></h3>
                                                                <h4>April 12, 2015</h4>
                                                            </div>
                                                        </li>
                                                        <li>
                                                                <img src="/img/right_lat_news_3.jpg" alt="">
                                                                <div class="lat_news_right_con">
                                                                    <h3><a href="single-post.html">very best to make the others comfortable</a></h3>
                                                                    <h4>April 12, 2015</h4>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                    <img src="/img/right_lat_news_3.jpg" alt="">
                                                                    <div class="lat_news_right_con">
                                                                        <h3><a href="single-post.html">very best to make the others comfortable</a></h3>
                                                                        <h4>April 12, 2015</h4>
                                                                    </div>
                                                                </li>                                                                                                                                                                        
                                                </ul>
                                            </div>
                                    </div>                                    
                                </div>  
                            </div>                          
                        </div>
                    </aside>                    
                </div>                               
            </div>
        </div>
    </section>
@endsection
