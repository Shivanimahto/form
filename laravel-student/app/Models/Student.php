<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'branch',
        'age',
        'contact_number',
        'gender'

    ];

    public function skill(){
        return $this->hasMany(StudentSkill::class,'student_id','id');
    }
}
