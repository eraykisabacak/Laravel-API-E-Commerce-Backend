<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SepetElemanlari extends Model
{
    //
    protected $fillable = ['basket_id', 'product_id', 'quantity', 'price'];
}
