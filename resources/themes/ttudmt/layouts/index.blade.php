<!-- Stored in resources/views/layouts/app.blade.php -->

<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>@yield('page_title')</title>

        <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
        <link href='/fonts/Lato-Medium.css' rel='stylesheet' type='text/css'>
        <link href='/fonts/Lato-Heavy.css' rel='stylesheet' type='text/css'>

        <!-- Bootstrap css -->
        <link rel="stylesheet" href="/css/bootstrap.min.css">

        <!-- Font awesome css -->
        <link rel="stylesheet" href="/css/font-awesome.min.css">

        <!-- Stroke Font Icon css -->
        <link rel="stylesheet" href="/css/pe-icon-7-stroke.css">

        <!-- Animate css -->
        <link rel="stylesheet" href="/css/animate.css">

        <!-- Owl carousel 2 css -->
        <link rel="stylesheet" href="/css/owl.carousel.css">

        <!-- Custom css -->
        <link rel="stylesheet" href="/style.css">
        <link rel="stylesheet" href="/css/responsive.css">

        <!-- Favicons -->

        <link rel="shortcut icon" href="/logoITA.jpg" type="image/x-icon">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!-- This Template Is Fully Coded By Linkon Miyan from rexord.com -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->        
    </head>
    <body>
        <div id="preloader">
            <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
        </div>
        @yield('header')
        @yield('breadcum')
        @yield('content')


        @include('theme::partials.footer')
        <!-- jQuery Latest version -->
        <script src="/js/vendor/jquery.1.11.1.js"></script>
        
        <!-- Google Maps API -->
        <script src="https://maps.googleapis.com/maps/api/js"></script>

        <!-- Bootstrap JS -->
        <script src="/js/bootstrap.min.js"></script>

        <!-- jQuery Counterup and Waypoints -->
        <script src="/js/waypoints.min.js"></script>
        <script src="/js/jquery.counterup.min.js"></script>

        <!-- jQuery easing -->
        <script src="/js/jquery.easing.1.3.min.js"></script>

        <!-- jQuery owl carousel -->
        <script src="/js/owl.carousel.min.js"></script>

        <!-- WOW Animation -->
        <script src="/js/wow.min.js"></script>
           
        <!--Activating WOW Animation only for modern browser-->
        <!--[if !IE]><!-->
            <script type="text/javascript">new WOW().init();</script>
        <!--<![endif]-->		

        <!--Oh Yes, IE 9+ Supports animation, lets activate for IE 9+-->
        <!--[if gte IE 9]>
            <script type="text/javascript">new WOW().init();</script>
        <![endif]-->		 

        <!--Opacity & Other IE fix for older browser-->
        <!--[if lte IE 8]>
            <script type="text/javascript" src="/js/ie-opacity-polyfill.js"></script>
        <![endif]-->	    

        <!-- jQuery main script -->
        <script src="/js/main.js"></script>        
    </body>
</html>