@extends('admin.master')

@section('title')
   Order Edit
@endsection

@section('body')
    <div class="row">
        <div class="col-md-8 grid-margin stretch-card mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Edit Order Form</h3>
                    <h3 class="text-center text-success">{{session('message')}}</h3>
                    <form  action="{{route('order.update', ['id' => $order->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Order ID</label>
                            <input type="text" class="form-control" readonly  value="{{$order->id}}" placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Order Status</label>
                            <select name="order_status" class="form-control">
                                    <option value="Pending" {{$order->order_status == 'Pending' ? 'Selected' : ''}}>Pending</option>
                                    <option value="Processing" {{$order->order_status == 'Processing' ? 'Selected' :''}}>Processing </option>
                                    <option value="Complete" {{$order->order_status == 'Complete' ? 'Selected' :''}}>Complete </option>
                                    <option value="Cancel" {{$order->order_status == 'Cancel' ? 'Selected' :''}}>Cancel</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Delivery Address</label>
                            <textarea name="delivery_address" class="form-control" rows="5">{{$order->delivery_address}}</textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Order Total</label>
                            <input type="text" class="form-control" readonly value="{{$order->order_total}}"  placeholder="Image">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Payment Method</label>
                            <input type="text" class="form-control" readonly value="{{$order->payment_method == 1 ? 'Cash On Delivery' : 'Online'}}"  placeholder="Image">
                        </div>
                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
