<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Session;
class CustomerAuthController extends Controller
{
    public $customer;

    public function logout()
    {
        Session::forget('customer_id');
        Session::forget('customer_name');

        return redirect('/');
    }
    public function login()
    {
        return view('website.customer.login');
    }
    public function signIn(Request $request)
    {
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);

        $this->customer = Customer::where('email', $request->email)->first();

        if($this->customer)
        {
            if(password_verify($request->password,  $this->customer->password))
            {
                Session::put('customer_name', $this->customer->name);
                Session::put('customer_id', $this->customer->id);

                return redirect('/');
            }
            else
            {
                return back()->with('password', 'invalid password');
            }
        }
        else
        {
            return back()->with('email', 'invalid email');
        }
    }
    public function register()
    {
        return view('website.customer.register');
    }
    public function signUp(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|unique:customers,email',
            'password' => 'required',
            'phone' => 'required|unique:customers,phone',
        ]);

        $this->customer = new Customer();
        $this->customer->name = $request->name;
        $this->customer->email = $request->email;
        $this->customer->password = bcrypt($request->password);
        $this->customer->phone = $request->phone;
        $this->customer->save();

        Session::put('customer_name', $this->customer->name);
        Session::put('customer_id', $this->customer->id);

        return redirect('/customer/dashboard');
    }
    public function manage()
    {
        return view('admin.customer.manage', [
            'customers' => Customer::all()
        ]);
    }
}
