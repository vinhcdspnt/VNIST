<section class="alumni_info_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section_heading">
                    <h1>{{$tintuc[0]->category->name}}</h1>   
                </div>
            </div>
        </div>
        <div class="row">
            <div class="all_alumni_item">
                @foreach($tintuc as $new)
                    <div class="col-sm-6">
                        <div class="single_alumni_box">
                            <div class="col-sm-4 fix_p_l">
                                <div class="sing_alumni_photo">
                                    <img src="{{ Voyager::image( $new->image ) }}" alt="">
                                </div>
                            </div>
                            <div class="col-md-8 fix_p_l">
                                <div class="sing_alumni_txt">
                                    <h2>{{$new->title}}</h2>
                                    <p>{{$new->excerpt}}</p>
                                    <a href="/news/{{$new->slug}}">Read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>