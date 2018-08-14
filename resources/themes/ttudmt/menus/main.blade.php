
<ul class="nav navbar-nav navbar-right">
    
    @foreach($items as $menu_item)
        <li {{url()->current()==url($menu_item->link())?'class=current_page_item':''}}><a href="{{url($menu_item->link())  }}">{{ $menu_item->title }}</a></li>
    @endforeach
    
</ul>
      



                                                   
