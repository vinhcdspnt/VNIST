{{-- <ul class="nav-menu">
    <li class="menu-active"><a href="index.html">Home</a></li>
    <li><a href="archive.html">Archive</a></li>
    <li><a href="category.html">Category</a></li>
    <li class="menu-has-children"><a href="">Post Types</a>
        <ul>
            <li><a href="standard-post.html">Standard Post</a></li>
            <li><a href="image-post.html">Image Post</a></li>
            <li><a href="gallery-post.html">Gallery Post</a></li>
            <li><a href="video-post.html">Video Post</a></li>
            <li><a href="audio-post.html">Audio Post</a></li>
        </ul>
    </li>
    <li><a href="about.html">About</a></li>
    <li><a href="contact.html">Contact</a></li>
</ul> --}}
<ul class="nav-menu">
    @foreach($items as $menu_item)
        <li {{url()->current()==url($menu_item->link())?'class=menu-active':''}}><a href="{{url($menu_item->link())  }}">{{ $menu_item->title }}</a></li>
    @endforeach    

</ul>