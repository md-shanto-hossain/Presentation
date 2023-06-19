<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Cart;
class CartController extends Controller
{
    public $product;

    public function addCart(Request $request, $id)
    {
        $this->product = Product::find($id);
        Cart::add([
            'id' => $id,
            'name' => $this->product->name,
            'qty' => $request->quantity,
            'price' =>  $this->product->selling_price,
            'options' => [
                'image' => $this->product->image,
            ]
        ]);
        return redirect('/cart/show-item');
    }
    public function index()
    {
        return view('website.cart.index');
    }
    public function remove($id)
    {
        Cart::remove($id);
        return redirect('/cart/show-item')->with('message', 'Cart Item Removed');
    }
    public function update(Request $request, $id)
    {

    }
}
