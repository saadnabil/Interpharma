<?php

namespace App\Http\Controllers;

use App\Blog;
use App\Comment;
use App\Contact;
use App\Product;
use App\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product =Product::inRandomOrder()->paginate(3);
        $topproduct =Product::all();
        $blog =Blog::latest()->paginate(3);
        $contact =Contact::latest()->first();
        $sliders = Slider::where('locale',app()->getLocale())->get();
        return view('index',['allproducts'=>$product ,'topproducts'=>$topproduct ,'allblog'=>$blog,'allcontact'=>$contact,'sliders' => $sliders]);
    }
    public function product($id)
    {
        
        $product =Product::where("project_id",$id)->paginate(4);
        $topproduct =Product::all();
        $contact =Contact::latest()->first();
        if($id==5000000000000)
        {
            $product =Product::inRandomOrder()->paginate(4);
        }
        
        return view('product',['allproducts'=>$product ,'topproducts'=>$topproduct ,'allcontact'=>$contact]);
    }
    public function checkout()
    {

        $contact =Contact::latest()->first();
        return view('checkout',[ 'allcontact'=>$contact]);
    }
    public function post($id)
    {
        $blog =Blog::find($id);
        $comment =Comment::where("blog_id",$id)->where('show',1)->latest()->paginate(12);
        $contact =Contact::latest()->first();
        return view('post',[ 'allcontact'=>$contact,'blog'=>$blog,'allcomment'=>$comment]);
    }
    public function details($id)
    {
        $product =Product::find($id);
        if (App::isLocale('ar')) {
            $d1=explode('.',$product->ar_compostion_comp1);
            $d2=explode('.',$product->ar_compostion_comp2);
            $d3=explode('.',$product->ar_indicator);
        } else {
            $d1=explode('.',$product->compostion_comp1);
            $d2=explode('.',$product->compostion_comp2);
            $d3=explode('.',$product->indicator);
        }


        $contact =Contact::latest()->first();
        $allcomment=Comment::where('product_id',$id)->where('show',1)->latest()->paginate(12);
        return view('singleproduct',[ 'allcontact'=>$contact,'product'=>$product,'des1'=>$d1,'des2'=>$d2,'des3'=>$d3,'allcomment'=>$allcomment]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show( $id)
    {
        // $products =Product::find($id);
        // return view('index',['product'=>$products]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }
}
