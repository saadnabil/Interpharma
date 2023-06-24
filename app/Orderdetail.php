<?php

namespace App;
use App\Order;
use Illuminate\Database\Eloquent\Model;

class Orderdetail extends Model
{
    public function order()
    {
        return $this->belongsTo(Order::class);

    }
}
