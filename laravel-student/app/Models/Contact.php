<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $fillable = [

        'name',
        'password',
        'birth',
        'country',
        'document',

    ];

    public function email()
    {
        return $this->hasMany(ContactEmail::class,'contact_id','id');
    }

     public function number()
     {
        return $this->hasMany(ContactPhone::class,'contact_id','id');
     }
}
