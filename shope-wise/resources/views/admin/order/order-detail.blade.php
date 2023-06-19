@extends('admin.master')

@section('title')
    Order Detail
@endsection

@section('body')
    <h3 class="text-center p-3">Order All Information</h3>
<table class="table table-hover table-bordered">

    <tr>
        <td>Order ID</td>
        <td>{{$order->id}}</td>
    </tr>
    <tr>
        <td>Order Total</td>
        <td>{{$order->order_total}}</td>
    </tr>
    <tr>
        <td>Tax Total</td>
        <td>{{$order->tax_total}}</td>
    </tr>
    <tr>
        <td>Shipping Total</td>
        <td>{{$order->shipping_total}}</td>
    </tr>
    <tr>
        <td>Order Date</td>
        <td>{{$order->order_date}}</td>
    </tr>
    <tr>
        <td>Order Status</td>
        <td>{{$order->order_status}}</td>
    </tr>
    <tr>
        <td>Delivery Address</td>
        <td>{{$order->delivery_address}}</td>
    </tr>
    <tr>
        <td>Delivery Date</td>
        <td>{{$order->delivery_date}}</td>
    </tr>
    <tr>
        <td>Delivery Status</td>
        <td>{{$order->delivery_status}}</td>
    </tr>
    <tr>
        <td>Payment Method</td>
        <td>{{$order->payment_method == 1 ? 'Cash On Delivery' : 'Online'}}</td>
    </tr>
    <tr>
        <td>Payment Status</td>
        <td>{{$order->payment_status}}</td>
    </tr>
    <tr>
        <td>Customer Info</td>
        <td>{{$order->customer->name}}  ({{$order->customer->phone}})</td>
    </tr>
</table>
<div>
    <h3 class="text-center p-5" >Order Product Information</h3>
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>Product Id.</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Quantity</th>
            <th>Action</th>
        </tr>
        <tbody>
        @foreach($order->orderDetails as $orderDetail)
        <tr>
            <td>{{$orderDetail->product_id}}</td>
            <td>{{$orderDetail->product_name}}</td>
            <td>{{$orderDetail->product_price}}</td>
            <td>{{$orderDetail->product_quantity}}</td>
            <td>
                <a href="">View</a>
            </td>
        </tr>
        @endforeach
        </tbody>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>
@endsection
