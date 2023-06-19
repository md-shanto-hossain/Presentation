@extends('admin.master')

@section('title')
    Sub-Category Page
@endsection

@section('body')
    <div class="row">
        <div class="col-md-8 grid-margin stretch-card mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Add Sub Category Form</h3>
                    <h3 class="text-center text-success">{{session('message')}}</h3>
                    <form  action="{{route('product.create')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Category Name</label>
                            <select name="category_id" class="form-control" >
                                <option value="">Select Category</option>
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}"> {{$category->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Sub Category Name</label>
                            <select name="sub_category_id" class="form-control" >
                                <option value="">Select Sub Category</option>
                                @foreach($subCategories as $subCategory)
                                    <option value="{{$subCategory->id}}" >{{$subCategory->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Unit Name</label>
                            <select name="unit_id" class="form-control" >
                                <option value="">Select Unit</option>
                                @foreach($units as $unit)
                                    <option value="{{$unit->id}}"> {{$unit->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Brand Name</label>
                            <select name="brand_id" class="form-control" >
                                <option value="">Select Brand</option>
                                @foreach($brands as $brand)
                                    <option value="{{$brand->id}}"> {{$brand->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Product Name</label>
                            <input type="text" class="form-control"  name="name" placeholder="name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Product Code</label>
                            <input type="text" class="form-control"  name="code" placeholder="Code">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Stoke Amount</label>
                            <input type="number" class="form-control"  name="stoke_amount" placeholder="Stoke Amount">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Price</label>
                            <div class="input-group">
                                <input type="number" class="form-control"  name="regular_price" placeholder="Regular Price">
                                <input type="number" class="form-control"  name="selling_price" placeholder="Selling Price">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Short Description</label>
                            <textarea name="short_description" class="form-control" rows="5" placeholder="Short Description"></textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Long Description</label>
                            <textarea name="long_description" class="form-control" rows="5" placeholder="Long Description"></textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Image</label>
                            <input type="file" class="form-control" name="image"  placeholder="Image">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Other Image</label>
                            <input type="file" class="form-control" name="other_image[]" multiple  placeholder="Image">
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
