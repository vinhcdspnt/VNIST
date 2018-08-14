<section class="key_to_success_area">
    <div class="container">
        <div class="row">
            <div class="key_to_success">
                <div class="col-md-7">
                    <div class="key2seccess_txt">
                        <h2>{{$keysucc->title}}</h2>
                        <p>{!! $keysucc->excerpt !!}</p>
                        
                    </div>
                </div>
                <div class="col-md-5 hidden-sm hidden-xs">
                    <div class="key2seccess_photo">
                        <img src="{{ Voyager::image( $keysucc->image ) }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>