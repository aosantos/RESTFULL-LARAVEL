<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Product;
use DB;
use Storage;
use Illuminate\Support\Facades\Validator;
use Excel;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {        
        $product = Product::all();
        return View('home', compact('product'));
    }
	 
    public function api()
    {
        return view('api');
    }
     public function teste()
    {
          $users = User::all();
        return View('teste', compact('users'));
    }
}
