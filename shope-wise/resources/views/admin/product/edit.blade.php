@extends('admin.master')

@section('title')
    Product Edit Page
@endsection

@section('body')
    <div class="row">
        <div class="col-md-8 grid-margin stretch-card mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Product Edit Form</h3>
                    <h3 class="text-center text-success">{{session('message')}}</h3>
                    <form  action="{{route('product.update', ['id' => $product->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Category Name</label>
                            <select name="category_id" class="form-control" >
                                <option value="">Select Category</option>
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}" {{$category->id == $product->category_id ? 'Selected':''}}> {{$category->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Sub Category Name</label>
                            <select name="sub_category_id" class="form-control" >
                                <option value="">Select Sub Category</option>
                                @foreach($subCategories as $subCategory)
                                    <option value="{{$subCategory->id}}" {{$subCategory->id == $product->sub_category_id ? 'Selected':''}}>{{$subCategory->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Unit Name</label>
                            <select name="unit_id" class="form-control" >
                                <option value="">Select Unit</option>
                                @foreach($units as $unit)
                                    <option value="{{$unit->id}}" {{$unit->id == $product->unit_id ? 'Selected':''}}> {{$unit->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Brand Name</label>
                            <select name="brand_id" class="form-control" >
                                <option value="">Select Brand</option>
                                @foreach($brands as $brand)
                                    <option value="{{$brand->id}}" {{$brand->id == $product->brand_id ? 'Selected':''}}> {{$brand->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Product Name</label>
                            <input type="text" class="form-control" value="{{$product->name}}"  name="name" placeholder="name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Product Code</label>
                            <input type="text" class="form-control"  name="code" value="{{$product->code}}" placeholder="Code">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Stoke Amount</label>
                            <input type="number" class="form-control"  name="stoke_amount" value="{{$product->stoke_amount}}" placeholder="Stoke Amount">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Price</label>
                            <div class="input-group">
                                <input type="number" class="form-control" value="{{$product->regular_price}}"  name="regular_price" placeholder="Regular Price">
                                <input type="number" class="form-control" value="{{$product->selling_price}}" name="selling_price" placeholder="Selling Price">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Short Description</label>
                            <textarea name="short_description" class="form-control" rows="5" placeholder="Short Description">{{$product->short_description}}</textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Long Description</label>
                            <textarea name="long_description" class="form-control" rows="5" placeholder="Long Description">{{$product->long_description}}</textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Image</label>
                            <input type="file" class="form-control" name="image"  placeholder="Image">
                            <img src="{{asset($product->image)}}" width="200" height="140" alt="">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Other Image</label>
                            <input type="file" class="form-control" name="other_image[]" multiple  placeholder="Image">
                            @foreach($product->otherImages as $image)
                                <img src="{{asset($image->other_image)}}" height="100" width="120" alt="">
                            @endforeach
                        </div>

                        <button type="submit" class="btn btn-primary me-2">Update</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
