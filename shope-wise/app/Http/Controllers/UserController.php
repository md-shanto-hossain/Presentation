<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return view('admin.user.index');
    }
    public function create(Request $request)
    {
        User::newUser($request);
        return back()->with('message', 'User Create Successful');
    }
    public function manage()
    {
        return view('admin.user.manage', [
            'users' => User::all(),
        ]);
    }
}
