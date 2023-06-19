<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ShopeWiseController extends Controller
{
    public function index()
    {
        return view('website.home.index', [
            'products' => Product::where('status', 1)->get(),
            'trendingProducts' => Product::where('status', 1)->orderBy('id', 'desc')->take(16)->get(),
            'fProducts' => Product::where('status', 0)->take(8)->get(),
        ]);
    }
    public function category($id)
    {
        return view('website.category.index', [
            'products' => Product::where('sub_category_id', $id)->get(),
        ]);
    }
    public function detail($id)
    {
        return view('website.detail.index', [
            'product' => Product::find($id),
        ]);
    }
}
