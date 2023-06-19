<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cart;
use Session;
class OrderDetail extends Model
{
    use HasFactory;
    private static $orderDetail, $product, $orderDetails;

    public static function newOrderDetail($id)
    {
        foreach (Cart::content() as $cartItem)
        {
            self::$orderDetail = new OrderDetail();
            self::$orderDetail->order_id = $id;
            self::$orderDetail->product_id = $cartItem->id;
            self::$orderDetail->product_name = $cartItem->name;
            self::$orderDetail->product_price = $cartItem->price;
            self::$orderDetail->product_quantity = $cartItem->qty;
            self::$orderDetail->save();

            self::$product = Product::find($cartItem->id);
            self::$product->stoke_amount = self::$product->stoke_amount - $cartItem->qty;

            Cart::remove($cartItem->rowId);

            self::$product->save();
        }
    }
    public static function deleteOrderDetail($id)
    {
        self::$orderDetails = OrderDetail::where('order_id', $id)->get();
        foreach (self::$orderDetails as $orderDetail)
        {
            $orderDetail->delete();
        }
    }
}
