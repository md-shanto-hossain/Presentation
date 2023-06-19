@extends('admin.master')

@section('title')
    Brand Edit Page
@endsection

@section('body')
    <div class="row">
        <div class="col-md-8 grid-margin stretch-card mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Edit Brand Form</h3>
                    <h3 class="text-center text-success">{{session('message')}}</h3>
                    <form  action="{{route('brand.update', ['id' => $brand->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Brand Name</label>
                            <input type="text" class="form-control"  name="name" value="{{$brand->name}}" placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea name="description" class="form-control" rows="5">{{$brand->description}}</textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Image</label>
                            <input type="file" class="form-control" name="image"  placeholder="Image">
                            <img src="{{asset($brand->image)}}" height="100" width="140" alt="">
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Update</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
