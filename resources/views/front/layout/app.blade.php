<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
        <meta name="description" content="">
        <title>Hotelify </title>        
		
        <link rel="icon" type="image/png" href="{{ asset('uploads/'.$global_setting_data->favicon) }}">

        <!-- Style -->

        @include('front.layout.styles')

        <!-- End Style -->
        
        <!-- All Javascripts -->

        @include('front.layout.scripts')

        <link href="https://fonts.googleapis.com/css2?family=Karla:wght@400;500&display=swap" rel="stylesheet">
        
        <style>
            .main-nav nav .navbar-nav .nav-item a:hover,
            .main-nav nav .navbar-nav .nav-item:hover a,
            .slide-carousel.owl-carousel .owl-nav .owl-prev:hover, 
            .slide-carousel.owl-carousel .owl-nav .owl-next:hover,
            .home-feature .inner .icon i,
            .home-rooms .inner .text .price,
            .home-rooms .inner .text .button a,
            .blog-item .inner .text .button a,
            .room-detail-carousel.owl-carousel .owl-nav .owl-prev:hover, 
            .room-detail-carousel.owl-carousel .owl-nav .owl-next:hover {
                color: {{ $global_setting_data->theme_color_1 }};
            }

            .main-nav nav .navbar-nav .nav-item .dropdown-menu li a:hover,
            .primary-color {
                color: {{ $global_setting_data->theme_color_1 }}!important;
            }

            .testimonial-carousel .owl-dots .owl-dot,
            .scroll-top,
            .room-detail .right .widget .book-now {
                background-color: {{ $global_setting_data->theme_color_1 }};
            }

            .slider .text .button a,
            .search-section button[type="submit"],
            .home-rooms .big-button a,
            .bg-website,
            .footer {
                background-color: {{ $global_setting_data->theme_color_1 }}!important;
            }

            .slider .text .button a,
            .slide-carousel.owl-carousel .owl-nav .owl-prev:hover, 
            .slide-carousel.owl-carousel .owl-nav .owl-next:hover,
            .search-section button[type="submit"],
            .room-detail-carousel.owl-carousel .owl-nav .owl-prev:hover, 
            .room-detail-carousel.owl-carousel .owl-nav .owl-next:hover,
            .room-detail .amenity .item {
                border-color: {{ $global_setting_data->theme_color_1 }}!important;
            }

            .home-feature .inner .icon i,
            .home-rooms .inner .text .button a,
            .blog-item .inner .text .button a,
            .room-detail .amenity .item,
            .cart .table-cart tr th {
                background-color: {{ $global_setting_data->theme_color_2 }}!important;
            }

            .page-top .bg {
                background-color: {{ $global_setting_data->theme_color_1 }}!important;
                opacity: 1;
            }
            .footer ul.social li a,
            .footer input[type="submit"] {
                background-color: #fff;
                color: {{ $global_setting_data->theme_color_1 }};
            }
            
            
        </style>

    </head>
    <body>
        
        <div class="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 left-side">
                        <ul>
                            @if($global_setting_data->phone != '')
                            <li class="phone-text">{{ $global_setting_data->phone }}</li>
                            @endif

                            @if($global_setting_data->email != '')
                            <li class="email-text"> {{ $global_setting_data->email }}</li>
                            @endif
                        </ul>
                    </div>
                    <div class="col-md-6 right-side">
                        <ul class="right">
                            @if($global_page_data->cart_status == 1)
                            <li class="menu"><a href="{{ route('cart') }}">{{ $global_page_data->cart_heading }} @if(session()->has('cart_room_id'))<sup>  {{ count((session()->get('cart_room_id'))) }}</sup>@endif</a></li>
                            @endif

                            @if($global_page_data->checkout_status == 1)
                            <li class="menu"><a href="{{ route('checkout') }}">{{ $global_page_data->checkout_heading }}</a></li>
                            @endif

                            @if(!Auth::guard('customer')->check())
                                @if($global_page_data->signup_status == 1)
                                <li class="menu"><a href="{{ route('customer_signup') }}">{{ $global_page_data->signup_heading }}</a></li>
                                @endif

                                @if($global_page_data->signin_status == 1)
                                <li class="menu"><a href="{{ route('customer_login') }}">{{ $global_page_data->signin_heading }}</a></li>
                                @endif
                            @else
                                <li class="menu"><a href="{{ route('customer_logout') }}">Logout</a></li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <!-- Navbar -->

        @include('front.layout.navbar')

        <!-- End Navbar -->


        <!-- Main Content -->

        @yield('main_content')

        <!-- End Main Content -->


        <!-- Footer -->

        @include('front.layout.footer')

        <!-- End Footer -->
     
        <div class="scroll-top">
            <i class="fa fa-angle-up"></i>
        </div>
		
        <!-- Footer Scripts --> 

        @include('front.layout.scripts_footer')
        
        <!-- End Footer Scripts -->

		
   </body>
</html>