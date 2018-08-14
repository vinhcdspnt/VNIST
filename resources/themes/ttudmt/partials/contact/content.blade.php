<section class="send_us_email_area">
    <div class="container">
        <div class="row">
            <div class="col-sm-offset-6 fix_p">
                <div class="send_email">
                    <div class="section-padding">
                        <h2>Hãy liên hệ với chúng tôi</h2>
                        <div class="email_form">
                            @if(count($errors)>0)
                                <div>
                                    @foreach($errors->all() as $err)
                                    {{$err}} <br>
                                    @endforeach
                                </div>
                            @endif
                            @if(Session::has('flash_mess'))
                                <div class="alert alert-success">{{Session::get('flash_mess')}}</div>
                            @endif
                            <form action="{{route('contact')}}" method="POST">
                                {{ csrf_field() }}
                                <div class="col-md-6 fix_p_r">
                                    <label>Tên của bạn <span>*</span></label>
                                    <input type="text" name="ten">
                                </div>
                                <div class="col-md-6 fix_p_r">
                                    <label>E-mail<span>*</span></label>
                                    <input type="text" name="email">
                                </div>
                                <div class="col-md-6 fix_p_r">
                                    <label>Số điện thoại</label>
                                    <input type="text" name="phone">
                                </div>
                                <div class="col-md-6 fix_p_r">
                                    <label>Chủ đề</label>
                                    <input type="text" name="chude">
                                </div>
                                <div class="col-md-12 fix_p_r">
                                    <label>Nội dung</label>
                                    <textarea name="noidung" cols="30" rows="10" ></textarea>
                                    <input type="submit" value="Gửi"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>