<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="item">
                    <h2 class="heading">Site Links</h2>
                    <ul class="useful-links">
                        @if($global_page_data->blog_status == 1)
                        <li><a href="{{ route('blog') }}">{{ $global_page_data->blog_heading }}</a></li>
                        @endif
                        @if($global_page_data->contact_status == 1)
                        <li><a href="{{ route('contact') }}">{{ $global_page_data->contact_heading }}</a></li>
                        @endif
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="item">
                    <h2 class="heading">Useful Links</h2>
                    <ul class="useful-links">
                        <li><a href="{{ route('home') }}">Home</a></li>
                        @if($global_page_data->terms_status == 1)
                        <li><a href="{{ route('terms') }}">{{ $global_page_data->terms_heading }}</a></li>
                        @endif
                        @if($global_page_data->privacy_status == 1)
                        <li><a href="{{ route('privacy') }}">{{ $global_page_data->privacy_heading }}</a></li>
                        @endif
                        @if($global_page_data->faq_status == 1)
                        <li><a href="{{ route('faq') }}">{{ $global_page_data->faq_heading }}</a></li>
                        @endif
                    </ul>
                </div>
            </div>
            
            
            <div class="col-md-3">
                <div class="item">
                    <h2 class="heading">Contact</h2>
                    @if($global_setting_data->address != '')
                    <div class="list-item">
                        <div class="left">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="right">
                            {!! nl2br($global_setting_data->address) !!}
                        </div>
                    </div>
                    @endif

                    @if($global_setting_data->phone != '')
                    <div class="list-item">
                        <div class="left">
                            <i class="fa fa-volume-control-phone"></i>
                        </div>
                        <div class="right">
                            {{ $global_setting_data->phone }}
                        </div>
                    </div>
                    @endif
                    @if($global_setting_data->email != '')
                    <div class="list-item">
                        <div class="left">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="right">
                            {{ $global_setting_data->email }}
                        </div>
                    </div>
                    @endif
                    <ul class="social">

                        @if($global_setting_data->facebook != '')
                        <li><a href="{{ $global_setting_data->facebook }}"><i class="fab fa-facebook-f"></i></a></li>
                        @endif

                        @if($global_setting_data->twitter != '')
                        <li><a href="{{ $global_setting_data->twitter }}"><i class="fab fa-twitter"></i></a></li>
                        @endif

                        @if($global_setting_data->pinterest != '')
                        <li><a href="{{ $global_setting_data->pinterest }}"><i class="fab fa-pinterest-p"></i></a></li>
                        @endif

                        @if($global_setting_data->linkedin != '')
                        <li><a href="{{ $global_setting_data->linkedin }}"><i class="fab fa-linkedin-in"></i></a></li>
                        @endif

                        @if($global_setting_data->instagram != '')
                        <li><a href="{{ $global_setting_data->instagram }}"><i class="fab fa-instagram"></i></a></li>
                        @endif
                    </ul>
                </div>
            </div>
            </div>

        </div>
    </div>
</div>

<div class="copyright">
    {{ $global_setting_data->copyright }}
</div>


@if(session()->get('error'))
<script>
    iziToast.error({
        title: '',
        position: 'topRight',
        message: '{{ session()->get('error') }}',
    });
</script>
@endif

@if(session()->get('success'))
<script>
    iziToast.success({
        title: '',
        position: 'topRight',
        message: '{{ session()->get('success') }}',
    });
</script>
@endif

<script>
    (function($){
        $(".form_subscribe_ajax").on('submit', function(e){
            e.preventDefault();
            $('#loader').show();
            var form = this;
            $.ajax({
                url:$(form).attr('action'),
                method:$(form).attr('method'),
                data:new FormData(form),
                processData:false,
                dataType:'json',
                contentType:false,
                beforeSend:function(){
                    $(form).find('span.error-text').text('');
                },
                success:function(data)
                {
                    $('#loader').hide();
                    if(data.code == 0)
                    {
                        $.each(data.error_message, function(prefix, val) {
                            $(form).find('span.'+prefix+'_error').text(val[0]);
                        });
                    }
                    else if(data.code == 1)
                    {
                        $(form)[0].reset();
                        iziToast.success({
                            title: '',
                            position: 'topRight',
                            message: data.success_message,
                        });
                    }
                    
                }
            });
        });
    })(jQuery);
</script>
<div id="loader"></div>