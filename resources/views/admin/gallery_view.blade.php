@extends('admin.layout.app')

@section('heading', 'View Gallery')

@section('right_top_button')
<a href="{{ route('admin_gallery_add') }}" class="btn btn-primary"><i class="fa fa-plus"></i> Add New</a>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Image</th>
                                    <th>Caption</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($gallery as $row)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        <img src="{{ asset('uploads/'.$row->image) }}" alt="" class="w_200">
                                    </td>
                                    <td width="70%">{{ $row->caption }}</td>
                                    <td class="pt_10 pb_10">
                                        <a href="{{ route('admin_gallery_edit',$row->id) }}" class="btn btn-primary">Edit</a>
                                        <a href="{{ route('admin_gallery_delete',$row->id) }}" class="btn btn-danger" onClick="return confirm('Are you sure?');">Delete</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection