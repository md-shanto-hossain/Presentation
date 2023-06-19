@extends('admin.master')

@section('title')
    Order Manage
@endsection

@section('body')
    <table class="table table-bordered">
        <h2 class="text-center mb-3">All Order Information</h2>
        <h3 class="text-success text-center">{{session('message')}}</h3>
        <thead>
        <tr class="text-center">
            <th style="width: 70px">Sl.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>NID</th>
            <th>Image</th>
        </tr>
        </thead>
        <tbody>
        @foreach($customers as $customer)
            <tr class="text-center">
              <td>{{$loop->iteration}}</td>
              <td>{{$customer->name}}</td>
              <td>{{$customer->email}}</td>
              <td>{{$customer->phone}}</td>
              <td>{{$customer->address}}</td>
              <td>{{$customer->nid}}</td>
              <td>
                  <img src="{{asset($customer->image)}}" height="80" width="140" alt="">
              </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
