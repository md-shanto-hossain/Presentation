<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Session;
class CheckoutController extends Controller
{
    public $customer, $order;

    public function index()
    {
        return view('website.checkout.index');
    }
    public function newOrder(Request $request)
    {
        if(Session::get('customer_id'))
        {
            $this->customer = Customer::find(Session::get('customer_id'));
            $this-> validate($request, [
                'delivery_address' => 'required',
            ]);
        }
        else
        {
            $this->validate($request, [
                'name' => 'required',
                'email' => 'required|unique:customers,email',
                'password' => 'required',
                'phone' => 'required|unique:customers,phone',
                'delivery_address' => 'required',
                'payment_method' => 'required',
            ], [
                'name.required' => 'required name filed  *'
            ]);
        }

        $this->customer = Customer::newCustomer($request);
        $this->order =  Order::newOrder($request, $this->customer->id);
        OrderDetail::newOrderDetail($this->order->id);

        return redirect('/order/complete')->with('message', 'Order Complete Successful');
    }
    public function orderComplete()
    {
        return view('website.order.complete-order');
    }
}
