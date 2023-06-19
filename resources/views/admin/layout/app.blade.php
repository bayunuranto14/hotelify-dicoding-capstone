<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">

    <link rel="icon" type="image/png" href="{{ asset('uploads/favicon.png') }}">

    <title>Admin Panel</title>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&display=swap" rel="stylesheet">

   <!-- styles -->
    
   @include('admin.layout.styles')

    <!-- end styles -->

    <!-- scripts -->

    @include('admin.layout.scripts')

    <!-- end scripts -->
</head>

<body>
<div id="app">
    <div class="main-wrapper">

        <!-- Navbar -->

        @include('admin.layout.navbar')

        <!-- end Navbar -->


        <!-- Sidebar -->

        @include('admin.layout.sidebar')

        <!-- end Sidebar -->

        <div class="main-content">
            <section class="section">
                <div class="section-header">
                    <h1>@yield('heading')</h1>
                    <div class="ml-auto">
                        @yield('right_top_button')
                    </div>
                </div>

                @yield('main_content')

            </section>
        </div>

    </div>
</div>

<!-- Footer Scripts -->

@include('admin.layout.scripts_footer')


@if($errors->any())
    @foreach($errors->all() as $error)
        <script>
            iziToast.error({
                title: '',
                message: '{{ $error }}',
                position: 'topRight'
            });
        </script>
    @endforeach
@endif


@if(session()->get('error'))
    <script>
        iziToast.error({
            title: '',
            message: '{{ session()->get('error') }}',
            position: 'topRight'
        });
    </script>
@endif

@if(session()->get('success'))
    <script>
        iziToast.success({
            title: '',
            message: '{{ session()->get('success') }}',
            position: 'topRight'
        });
    </script>
@endif
<!-- end Footer Scripts -->

</body>
</html>