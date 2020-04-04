<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Urun extends Model
{
    protected $fillable = ['name', 'category_id', 'status', 'price', 'stock', 'description', 'photo'];  
}
