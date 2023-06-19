<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class APIController extends Controller
{
    private $categories, $products, $product, $customer, $order, $orderDetail ;

    public function getAllCategory()
    {
        $this->categories = Category::all();
        foreach ($this->categories as $category)
        {
            $category->suc_categories = $category->subCategories;
        }
        return response()->json($this->categories);
    }
    public function exclusiveProduct()
    {
        $this->products = Product::all('id', 'name', 'regular_price', 'selling_price', 'image');
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }
    public function getCategoryProduct($id)
    {
        $this->products = Product::where('sub_category_id', $id)->get();
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }
    public function getProductDetail($id)
    {
        $this->product = Product::find($id);
        $this->product->image = asset($this->product->image);
        $this->product->other_images = $this->product->otherImages;
        foreach($this->product->other_images as $otherImage)
        {
            $otherImage->other_image = asset($otherImage->other_image);
        }
        $this->product->category_name = $this->product->category->name;
        $this->product->sub_category_name = $this->product->subCategory->name;
        $this->product->unit_name = $this->product->unit->name;
        $this->product->brand_name = $this->product->brand->name;
        return response()->json($this->product);
    }
    public function newOrder(Request $request)
    {
        $this->customer = new Customer();
        $this->customer->name = $request->customer['name'];
        $this->customer->email = $request->customer['email'];
        $this->customer->phone = $request->customer['mobile'];
        $this->customer->password = bcrypt($request->customer['password']);
        $this->customer->save();

        $this->order = new Order();
        $this->order->customer_id = $this->customer->id;
        $this->order->order_total = $request->grandTotal;
        $this->order->tax_total = $request->taxTotal;
        $this->order->shipping_total = $request->shippingTotal;
        $this->order->order_date = date('Y-m-d');
        $this->order->order_timestamp = strtotime(date('Y-m-d'));
        $this->order->delivery_address = $request->delivery_address;
        $this->order->payment_method = $request->payment_method;
        $this->order->payment_date = date('Y-m-d');
        $this->order->payment_timestamp = strtotime(date('Y-m-d'));
        $this->order->save();

        foreach ($request->products as $product)
        {
            $this->orderDetail = new OrderDetail();
            $this->order_id = $this->order->id;
            $this->proudct_id = $product->id;
            $this->product_name = $product->name;
            $this->product_price = $product->price;
            $this->product_quantity = $product->qty;
            $this->product->save();
        }

        return response()->json([
            'success' => true,
            'id' => $this->customer->id,
            'name' => $this->customer->name,
            'token' => $this->customer->token,
        ]);
    }
}
