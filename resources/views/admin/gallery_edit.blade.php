@extends('admin.layout.app')

@section('heading', 'Edit Gallery')

@section('right_top_button')
<a href="{{ route('admin_gallery_view') }}" class="btn btn-primary"><i class="fa fa-eye"></i> View All</a>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin_gallery_update',$gallery_data->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4">
                                    <label class="form-label">Existing Image</label>
                                    <div>
                                        <img src="{{ asset('uploads/'.$gallery_data->image) }}" alt="" class="w_200">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Change Image</label>
                                    <div>
                                        <input type="file" name="image">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Caption</label>
                                    <input type="text" class="form-control" name="caption" value="{{ $gallery_data->caption }}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label"></label>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection