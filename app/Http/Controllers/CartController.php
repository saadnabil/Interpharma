<?php

namespace App\Http\Controllers;
use App\Star;
use App\Contact;
use App\Product;
use App\Likeproduct;
use Illuminate\Http\Request;
use LaravelLocalization;
class CartController extends Controller
{
    public function add($id)
    {

        $item= Product::find($id);
        // dd($item->offer);
            $name="";
            if(LaravelLocalization::getCurrentLocale()=='ar')
            {
                $name=$item->ar_name;
            }else{
                $name=$item->name;
            }
            \Cart::session(auth()->id())->add(array(
                'id' => $item->id,
                'name' =>$name,
                'price' => $item->price,
                // 'image' => $item->image,
                'quantity' => 1,
                'attributes' => array(),
                'associatedModel' => $item
            ));

        //  dd($lists);

        // return redirect()->route('cart-index');
        
         $product =Product::latest()->paginate(4);
        $contact =Contact::latest()->first();
        
        return  redirect()->route('shop')->with(['allproducts'=>$product ,'topproducts'=>$product ,'allcontact'=>$contact]);
    }
    public function index()
    {

        $contact =Contact::latest()->first();
        $cartItem = \Cart::session(auth()->id())->getContent();
        // dd($cartItem);
        return view('checkout',['cartItem'=>$cartItem ,'allcontact'=>$contact]);
    }
    public function delete($id)
    {
        \Cart::session(auth()->id())->remove($id);
        return back();
    }

    public function update($id)
    {
        \Cart::session(auth()->id())->update($id,[
            'quantity' => array(
                'relative' => false,
                'value' =>request('quantity')
            )
        ]);
        return back();
    }

  public function shop( )
    {
        
        $product =Product::latest()->paginate(12);
        $contact =Contact::latest()->first();
        $productTop=Product::inRandomOrder()->paginate(14);
        return view('shop',['allproducts'=>$product ,'topproducts'=>$productTop ,'allcontact'=>$contact]);
    }
    
    public function favourite_add($id)
    {
            $product=Likeproduct::where('product_id',$id)->where('user_id',auth()->user()->id)->get();
            if($product->count()>0)
            {
                return redirect()->back()->with('success',__('words.add_in_favourite_before'));
            }
            Likeproduct::create([
                "product_id"=>$id,
                "user_id"=>auth()->user()->id
                ]);
            $proIds=LikeProduct::where("user_id",auth()->user()->id)->pluck('product_id');   
            $favourites=Product::whereIn('id',$proIds)->paginate(12);
            $contact =Contact::latest()->first();
            $productTop=Product::inRandomOrder()->paginate(14);
            
            return redirect()->route('favourites')->with(['allproducts'=>$favourites ,'topproducts'=>$productTop ,'allcontact'=>$contact]);
    }
    
    public function favourites()
    {
            $proIds=LikeProduct::where("user_id",auth()->user()->id)->pluck('product_id');   
            $favourites=Product::whereIn('id',$proIds)->paginate(12);
            $contact =Contact::latest()->first();
            $productTop=Product::inRandomOrder()->paginate(14);
            return view('favourites')->with(['allproducts'=>$favourites ,'topproducts'=>$productTop ,'allcontact'=>$contact]);
    
    }
    public function removeFavourite($id)
    {
            $likeProduct=Likeproduct::where('product_id',$id)->where('user_id',auth()->user()->id)->first();
            $likeProduct->delete();
            $proIds=LikeProduct::where("user_id",auth()->user()->id)->pluck('product_id');   
            $favourites=Product::whereIn('id',$proIds)->paginate(12);
            $contact =Contact::latest()->first();
            $productTop=Product::inRandomOrder()->paginate(14);
            return view('favourites')->with(['allproducts'=>$favourites ,'topproducts'=>$productTop ,'allcontact'=>$contact]);
    }
    
    public function addStar($id)
    {
        $star=Star::where("product_id",$id)->where('user_id',auth()->user()->id)->first();
        if($star)
        {
            if($star->counter < 5)
            {
                $star->counter=$star->counter+1;
                $star->save();   
                return redirect()->back();
            }else{
                return redirect()->back();    
            }
        }else{
            
            $product=Star::create([
                "product_id"=>$id,
                "user_id"=>auth()->user()->id,
                "counter"=>1,
                ]);
            if($product)
            {
                return redirect()->back();
            }
        }
    }
    
    
    public function removeStar($id)
    {
        $star=Star::where("product_id",$id)->where('user_id',auth()->user()->id)->first();
        if($star)
        {
            if($star->counter <= 5 && $star->counter > 0)
            {
                $star->counter=$star->counter-1;
                $star->save();   
                if($star->counter == 0)
                {
                    $star->delete();
                     }
                return redirect()->back();
            }else{
                return redirect()->back();    
            }
        }else{
            
            $product=Star::create([
                "product_id"=>$id,
                "user_id"=>auth()->user()->id,
                "counter"=>1,
                ]);
            if($product)
            {
                return redirect()->back();
            }
        }
    }
}
