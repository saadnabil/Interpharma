<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Client;
use App\Order;
use App\Orderdetail;
class clientController extends Controller
{
    public function index()
    {
        return view('vender.voyager.clients.index')->with(['clients'=>Client::latest()->paginate(3)]);
    }
    public function deleteClient($id)
    {

         $cl=Client::find($id);
         foreach($cl->orders as $orders)
         {
             foreach($orders->orderdetails as $orderd)
             {
                 $orderd->delete();
             }
             $orders->delete();
         }
        $cl->delete();
         session()->flash('success',__("words.delete_success"));
        return redirect()->back();
    }
    public function filterClient($id)
    {
        $client=Client::where('id',$id)->paginate(1);
        if($client)
        {
            return view('vender.voyager.clients.index')->with(['clients'=>$client]);
        }
    }
}
