<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Orderdetail;
use App\Product;
class orderdetailsController extends Controller
{
    public function index()
    {
        return view('vender.voyager.orderdetails.index')->with(['orderdetails'=>Orderdetail::latest()->paginate(3)]);
    }

    public function orderdetails($id)
    {
        $orderdetails=Orderdetail::where('order_id',$id)->latest()->paginate(3);
        return view('vender.voyager.orderdetails.index',compact('orderdetails'));
    }
    public function orderdetailsDelete($id)
    {
        $orderdetail=Orderdetail::find($id);
        if($orderdetail)
        {
            $orderdetail->delete();
            session()->flash('success',__('words.delete_success'));
            return redirect()->back();
        }else
        {
            session()->flash('success',__('words.not_found'));
            return redirect()->back();
        }
    }

    public function orderdetailsUpdate($id)
    {
        $orderdetail=Orderdetail::find($id);

        return view('vender.voyager.orderdetails.update',compact('orderdetail'));
    }

    public function orderdetailsEdit(Request $request)
    {
       $orderdetail=Orderdetail::find($request->id);
       if($orderdetail->product_id==$request->product_id)
       {
           $orderdetail->quentity=$request->quentity;
       }else
       {
           $product=Product::find($request->product_id);
           $orderdetail->product_id=$request->product_id;
           $orderdetail->price=$product->price;
           $orderdetail->quentity=$request->quentity;
       }
       $orderdetail->save();
       return redirect("/admin/orderdetails/" .$orderdetail->order_id );
    }
}
