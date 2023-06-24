<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Product;
use App\Blog;
class Comment extends Model
{
    public function blog()
    {
        return $this->belongsTo(Blog::class);
    }
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
