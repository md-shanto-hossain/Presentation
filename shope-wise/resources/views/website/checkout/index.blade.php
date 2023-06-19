@extends('website.master')

@section('title')
    Checkout Page
@endsection

@section('body')
    <!-- START MAIN CONTENT -->
    <div class="main_content">

        <!-- START SECTION SHOP -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="toggle_info">
                            <span><i class="fas fa-user"></i>Returning customer? <a href="#loginform" data-toggle="collapse" class="collapsed" aria-expanded="false">Click here to login</a></span>
                        </div>
                        <div class="panel-collapse collapse login_form" id="loginform">
                            <div class="panel-body">
                                <p>If you have shopped with us before, please enter your details below. If you are a new customer, please proceed to the Billing &amp; Shipping section.</p>
                                <form method="post">
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control" name="email" placeholder="Username Or Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" required="" type="password" name="password" placeholder="Password">
                                    </div>
                                    <div class="login_footer form-group">
                                        <div class="chek-form">
                                            <div class="custome-checkbox">
                                                <input class="form-check-input" type="checkbox" name="checkbox" id="remember" value="">
                                                <label class="form-check-label" for="remember"><span>Remember me</span></label>
                                            </div>
                                        </div>
                                        <a href="#">Forgot password?</a>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-fill-out btn-block" name="login">Log in</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="toggle_info">
                            <span><i class="fas fa-tag"></i>Have a coupon? <a href="#coupon" data-toggle="collapse" class="collapsed" aria-expanded="false">Click here to enter your code</a></span>
                        </div>
                        <div class="panel-collapse collapse coupon_form" id="coupon">
                            <div class="panel-body">
                                <p>If you have a coupon code, please apply it below.</p>
                                <div class="coupon field_form input-group">
                                    <input type="text" value="" class="form-control" placeholder="Enter Coupon Code..">
                                    <div class="input-group-append">
                                        <button class="btn btn-fill-out btn-sm" type="submit">Apply Coupon</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="medium_divider"></div>
                        <div class="divider center_icon"><i class="linearicons-credit-card"></i></div>
                        <div class="medium_divider"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="heading_s1">
                            <h4>Checkout Details</h4>
                        </div>
                        <form action="{{route('order.new')}}" method="post">
                            @csrf
                           @if(!Session::get('customer_id'))
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" placeholder="Full name *">
                                    <span class="text-danger">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="email" name="email" placeholder="Email address *">
                                    <span class="text-danger">{{$errors->has('email') ? $errors->first('email') : ''}}</span>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" name="password" placeholder="Password*">
                                    <span class="text-danger">{{$errors->has('password') ? $errors->first('password') : ''}}</span>
                                </div>
                                <div class="form-group">
                                    <input class="form-control"  type="number" name="phone" placeholder="Phone">
                                    <span class="text-danger">{{$errors->has('phone') ? $errors->first('phone') : ''}}</span>
                                </div>
                            @endif
                            <div class="form-group">
                                <textarea class="form-control" name="delivery_address" rows="5" placeholder=" Delivery Address *"></textarea>
                                <span class="text-danger">{{$errors->has('delivery_address') ? $errors->first('delivery_address') : ''}}</span>
                            </div>
                            <div class="payment_method">
                                <div class="heading_s1">
                                    <h4>Payment</h4>
                                </div>
                                <div class="payment_option">

                                    <div class="custome-radio">
                                        <input class="form-check-input" type="radio" name="payment_method" id="exampleRadios4" value="1">
                                        <label class="form-check-label" for="exampleRadios4">Cash On Delivery</label>
                                    </div>
                                    <div class="custome-radio">
                                        <input class="form-check-input" type="radio" name="payment_method"  id="exampleRadios5" value="2">
                                        <label class="form-check-label" for="exampleRadios5">Online</label>
                                    </div>
                                    <span class="text-danger">{{$errors->has('payment_method') ? $errors->first('payment_method') : ''}}</span>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-fill-out btn-block">Place Order</button>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <div class="order_review">
                            <div class="heading_s1">
                                <h4>Your Orders</h4>
                            </div>
                            <div class="table-responsive order_table">
                                <table class="table">

                                    <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php($sum = 0)
                                    @foreach(Cart::content() as $cartItem)
                                    <tr>
                                        <td>{{$cartItem->name}} <span class="product-qty">x {{$cartItem->qty}}</span></td>
                                        <td>{{$order_total = $cartItem->price * $cartItem->qty}}</td>
                                    </tr>
                                    @php($sum = $sum + ($cartItem->price * $cartItem->qty))
                                    @endforeach
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>SubTotal</th>
                                        <td class="product-subtotal">{{$sum}}</td>
                                    </tr>
                                    <tr>
                                        <th>Tax Total</th>
                                        <td>{{$tax_total = 10/100 * $sum}}</td>
                                    </tr>
                                    <tr>
                                        <th>Shipping</th>
                                        <td>{{$shipping = 500}}</td>
                                    </tr>
                                    <tr>
                                        <th>Total</th>
                                        <td class="product-subtotal">{{$totalPayable = $sum + $tax_total + $shipping }}</td>
                                    </tr>
                                    <?php
                                    Session::put('order_total', $sum);
                                    Session::put('tax_total', $tax_total);
                                    Session::put('shipping', $shipping);
                                    Session::put('totalPayable', $totalPayable);
                                    ?>
                                    </tfoot>
                                </table>
                            </div>

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

