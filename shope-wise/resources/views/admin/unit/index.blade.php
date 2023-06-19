@extends('admin.master')

@section('title')
    Add Unit Page
@endsection

@section('body')
    <div class="row">
        <div class="col-md-8 grid-margin stretch-card mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Add Unit Form</h3>
                    <h3 class="text-center text-success">{{session('message')}}</h3>
                    <form  action="{{route('unit.create')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Unit Name</label>
                            <input type="text" class="form-control"  name="name" placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea name="description" class="form-control" rows="5"></textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Image</label>
                            <input type="file" class="form-control" name="image"  placeholder="Image">
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
