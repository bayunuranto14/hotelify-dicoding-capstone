@extends('admin.layout.app')

@section('heading', 'Datewise Rooms')

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-6">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_datewise_rooms_submit') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4">
                                    <label class="form-label">Select Date *</label>
                                    <input type="text" class="form-control datepicker" name="selected_date">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label"></label>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
(function($){

"use strict";

$(".inputtags").tagsinput('items');

$(document).ready(function() {
    $('#example1').DataTable();
});

$('.icp_demo').iconpicker();

$(document).ready(function() {
    $('.snote').summernote();
});

$('.datepicker').datepicker({ format: "dd/mm/yyyy" });
$('.timepicker').timepicker({
    icons:
    {
        up: 'fa fa-angle-up',
        down: 'fa fa-angle-down'
    }
});

})(jQuery);    
</script>
@endsection