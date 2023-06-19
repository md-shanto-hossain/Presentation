<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Session;

class CustomerDashboardController extends Controller
{
    public function index()
    {
        return view('website.dashboard.index', [
            'orders' => Order::where('customer_id', Session::get('customer_id'))->get(),
        ]);
    }
    public function wishlist()
    {
        return view('website.dashboard.wishlist');
    }
}
