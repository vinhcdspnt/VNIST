<section class="latest_courses_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section_heading">
                    <h1>{{ $dichvu[0]->category->name}}</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="all_latest_course">
                @foreach($dichvu as $dv)
                    <div class="single_latest_courses">
                        
                        <div class="sing_lat_course_photo">
                            <img src="{{ Voyager::image( $dv->image ) }}" alt="">
                        </div>
                        <div class="sing_lat_course_txt">
                            <h2>{{$dv->title}}</h2>
                            <p>{{$dv->excerpt}}</p> 
                        </div>
                    </div>
                @endforeach
        </div>
    </div>
</section>