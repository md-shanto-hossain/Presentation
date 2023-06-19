@extends('website.master')

@section('title')
    Cart Page
@endsection

@section('body')
    <!-- START MAIN CONTENT -->
    <div class="main_content">

        <!-- START SECTION SHOP -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h3 class="text-center text-success">{{session('message')}}</h3>
                        <div class="table-responsive shop_cart_table">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="product-thumbnail">&nbsp;</th>
                                    <th class="product-name">Product</th>
                                    <th class="product-price">Price</th>
                                    <th class="product-quantity">Quantity</th>
                                    <th class="product-subtotal">Total</th>
                                    <th class="product-remove">Remove</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($sum = 0)
                                @foreach(Cart::content() as $cartItem)
                                    <form action="{{route('cart.update', ['id' => $cartItem->id])}}" method="POST">
                                        @csrf
                                        <tr>
                                            <td class="product-thumbnail"><a href="#"><img src="{{asset($cartItem->options->image)}}" height="110" width="100" alt="product1"></a></td>
                                            <td class="product-name" data-title="Product"><a href="{{route('detail', ['id' =>$cartItem->id])}}">{{$cartItem->name}}</a></td>
                                            <td class="product-price" data-title="Price">{{$cartItem->price}}</td>
                                            <td class="product-quantity" data-title="Quantity"><div class="quantity">
                                                    <input type="button" value="-" class="minus">
                                                    <input type="text" name="quantity" value="{{$cartItem->qty}}" title="Qty" class="qty" size="4">
                                                    <input type="button" value="+" class="plus">
                                                </div></td>
                                            <td class="product-subtotal" data-title="Total">{{$cartItem->price * $cartItem->qty}}</td>
                                            <td class="product-remove" data-title="Remove"><a href="{{route('cart.remove', ['id' => $cartItem->rowId])}}"><i class="ti-close"></i></a></td>
                                        </tr>
                                    @php($sum = $sum + ($cartItem->price * $cartItem->qty))
                                @endforeach
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="6" class="px-0">
                                        <div class="row no-gutters align-items-center">

                                            <div class="col-lg-4 col-md-6 mb-3 mb-md-0">
                                                <div class="coupon field_form input-group">
                                                    <input type="text" value="" class="form-control form-control-sm" placeholder="Enter Coupon Code..">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-fill-out btn-sm" type="submit">Apply Coupon</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 text-left text-md-right">
                                                <button class="btn btn-line-fill btn-sm" type="submit">Update Cart</button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tfoot>
                                </form>
                            </table>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="medium_divider"></div>
                        <div class="divider center_icon"><i class="ti-shopping-cart-full"></i></div>
                        <div class="medium_divider"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <div class="border p-3 p-md-4">
                            <div class="heading_s1 mb-3">
                                <h6>Cart Totals</h6>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td class="cart_total_label">Order Total</td>
                                            <td class="cart_total_amount">{{$sum}}</td>
                                        </tr>
                                        <tr>
                                            <td class="cart_total_label">Tax Total</td>
                                            <td class="cart_total_amount">{{$tax_total = 10/100 * $sum}}</td>
                                        </tr>
                                        <tr>
                                            <td class="cart_total_label">Shipping Total</td>
                                            <td class="cart_total_amount">{{$shipping_total = 500}}</td>
                                        </tr>
                                        <tr>
                                            <td class="cart_total_label">Total</td>
                                            <td class="cart_total_amount"><strong>{{$totalPayable =  $sum + $tax_total + $shipping_total}}</strong></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <a href="{{route('checkout')}}" class="btn btn-fill-out">Proceed To CheckOut</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END SECTION SHOP -->

        <!-- START SECTION SUBSCRIBE NEWSLETTER -->
        <div class="section bg_default small_pt small_pb">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="heading_s1 mb-md-0 heading_light">
                            <h3>Subscribe Our Newsletter</h3>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="newsletter_form">
                            <form>
                                <input type="text" required="" class="form-control rounded-0" placeholder="Enter Email Address">
                                <button type="submit" class="btn btn-dark rounded-0" name="submit" value="Submit">Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- START SECTION SUBSCRIBE NEWSLETTER -->

    </div>
    <!-- END MAIN CONTENT -->
@endsection
