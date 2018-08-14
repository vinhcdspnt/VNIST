<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Gioithieu; //Model Gioithieu

class PageController extends Controller
{
    public function index(){
        // $keysucc = Post::where('category_id',1)->firstorFail();
        // $khoahoc = Post::where('category_id',2)->get();
        // $dichvu = Post::where('category_id',3)->get();
        
    	return view('theme::index');//,['keysucc'=>$keysucc,'khoahoc'=>$khoahoc,'dichvu'=>$dichvu]);
    }
    public function about(){
        $gioithieu = Gioithieu::where('featured',1)->firstorFail();
      
    	return view('theme::about',['gioithieu'=>$gioithieu]);
    }    
    public function contact(){
    	return view('theme::contact');
    } 
    public function service(){
    	return view('theme::service');
    }         
}
