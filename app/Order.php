<?php

namespace App;
use App\Client;
use App\Orderdetail;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function client()
    {
        return $this->belongsTo(Client::class);
    }

    public function orderdetails()
    {
        return $this->hasMany(Orderdetail::class);
    }
    protected $append=['total_price'];
    public function getTotalPriceAttribute()
    {
        $orders=Orderdetail::where('order_id',$this->id)->get();
        $totalPrice=0;
        foreach($orders as $order)
        {
            $totalPrice+=$order->price * $order->quentity;
        }
        return $totalPrice;
    }
}
