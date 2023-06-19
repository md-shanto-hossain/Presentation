@extends('admin.master')

@section('title')
    Product Detail Page
@endsection

@section('body')
    <table class="table table-bordered table-hover">
        <h3 class="text-center pb-4">Product Detail Information</h3>
        <tr>
            <th>Product Id.</th>
            <td>{{$product->id}}</td>
        </tr>
        <tr>
            <th> Category Name</th>
            <td>{{$product->category->name}}</td>
        </tr>
        <tr>
            <th> Sub Category Name</th>
            <td>{{$product->subCategory->name}}</td>
        </tr>
        <tr>
            <th> Unit Name</th>
            <td>{{$product->unit->name}}</td>
        </tr>
        <tr>
            <th> Brand Name</th>
            <td>{{$product->brand->name}}</td>
        </tr>
        <tr>
            <th>Product Name</th>
            <td>{{$product->name}}</td>
        </tr>
        <tr>
            <th>Product Code</th>
            <td>{{$product->code}}</td>
        </tr>
        <tr>
            <th>Stoke Amount</th>
            <td>{{$product->stoke_amount}}</td>
        </tr>
        <tr>
            <th>Regular Price</th>
            <td>{{$product->regular_price }}</td>
        </tr>
        <tr>
            <th>Selling Price</th>
            <td>{{$product->selling_price}}</td>
        </tr>
        <tr>
            <th>Short Description</th>
            <td>{{$product->short_description}}</td>
        </tr>
        <tr>
            <th>Long Description</th>
            <td>{{$product->long_description}}</td>
        </tr>
        <tr>
            <th>Image</th>
            <td>
                <img src="{{asset($product->image)}}" width="200" height="140" alt="">
            </td>
        </tr>
        <tr>
            <th>Other Image</th>

            <td>
                @foreach($product->otherImages as $image)
                    <img src="{{asset($image->other_image)}}" width="120" height="80" alt="">
                @endforeach
            </td>

        </tr>
    </table>
@endsection
