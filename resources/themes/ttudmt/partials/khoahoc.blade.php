<section class="our_courses_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section_heading">
                    <h1>{{$khoahoc[0]->category->name}}</h1>
                </div>
            </div>
        </div>
        <div class="row all_our_courses">
            @foreach($khoahoc as $kh)
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ Voyager::image( $kh->image ) }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="img/icon_course_1.png" alt="" class="course_icon">
                            <h2>{{$kh->title}}</h2>
                            <p>{{$kh->excerpt}}</p>
                            <a href="#">Apply now<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>