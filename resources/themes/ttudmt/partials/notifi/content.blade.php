<section class="latest_blog_post_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section_heading">
                    <h1>{{$thongbao[0]->category->name}}</h1>
                    <p>Cập nhật mới nhất đến các bạn học viên</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="all_latest_blog_post">
                @foreach($thongbao as $tb)
                <div class="col-md-4 col-sm-6">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ Voyager::image( $tb->image ) }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>{{$tb->created_at->format('d M')}}</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="/notifi/{{$tb->slug}}">{{$tb->title}}</a></h2>
                                    <p>Posted By : {{$tb->author->name}}</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>{{$tb->excerpt}}</p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>7 Comments</li>
                                        <li><i class="pe-7s-like"></i>10 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach


            </div>

        </div>
    </div>
</section>