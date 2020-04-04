<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Musteri extends Model
{
    protected $fillable = ['name', 'status', 'email','mobile', 'photo'];    
    
}
