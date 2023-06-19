<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\OtherImage;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public $product;

    public function index()
    {
        return view('admin.product.index', [
            'subCategories' => SubCategory::where('status', 1)->get(),
            'units' => Unit::where('status', 1)->get(),
            'brands' => Brand::where('status', 1)->get()
        ]);
    }

    public function create(Request $request)
    {
        $this->product = Product::newProduct($request);
        OtherImage::newOtherImage($request, $this->product->id);
        return back()->with('message', 'product Info Create Successful');
    }

    public function manage()
    {
        return view('admin.product.manage', [
            'products' => Product::where('status', 1)->get(),
            'subCategories' => SubCategory::where('status', 1)->get(),
            'units' => Unit::where('status', 1)->get(),
            'brands' => Brand::where('status', 1)->get()
        ]);
    }

    public function detail($id)
    {
        return view('admin.product.detail', [
            'product' => Product::find($id),
        ]);
    }
    public function edit($id)
    {
        return view('admin.product.edit', [
            'product' => Product::find($id),
            'subCategories' => SubCategory::where('status', 1)->get(),
            'units' => Unit::where('status', 1)->get(),
            'brands' => Brand::where('status', 1)->get()
        ]);
    }
    public function update(Request $request, $id)
    {
        Product::updateProduct($request, $id);
        if($request->file('other_image'))
        {
            OtherImage::updateProduct($request, $id);
        }
        return redirect('/product/manage')->with('message', 'Product Info Delete Successful');
    }
    public function delete($id)
    {
        Product::deleteProduct($id);
        OtherImage::deleteOtherImage($id);
        return back()->with('message', 'Product Info Create Successful');
    }
}
