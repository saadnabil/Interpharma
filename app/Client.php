<?php

namespace App;
use App\Order;
use App\Country;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
    public function country()
    {
        return $this->belongsTo(Country::class);
    }
}
