<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sepet extends Model
{
    //
    protected $fillable = ['status', 'customer_id', 'total_amount','shipping_address_id', 'billing_address_id'];
}
