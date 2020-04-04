<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Adres extends Model
{
    protected $fillable = ['customer_id', 'status', 'type', 'name', 'address', 'city', 'tc_no', 'mobile', 'phone'];    
}
