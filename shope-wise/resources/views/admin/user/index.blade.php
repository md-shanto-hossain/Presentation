@extends('admin.master')

@section('title')
   User Page
@endsection

@section('body')
    <div class="row">
        <div class="col-md-8 grid-margin stretch-card mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Add User Form</h3>
                    <h3 class="text-center text-success">{{session('message')}}</h3>
                    <form  action="{{route('user.create')}}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control"  name="name" placeholder="Full Name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"> Email</label>
                            <input type="email" class="form-control"  name="email" placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"> Password</label>
                            <input type="password" class="form-control"  name="password" placeholder="Password">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">User Type</label>
                            <select name="user_type" class="form-control" >
                                <option value="">Select User type</option>
                                <option value="1"> Super Admin</option>
                                <option value="2"> Admin</option>
                                <option value="3"> Executive</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
