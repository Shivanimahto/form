<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentSkill extends Model
{
    use HasFactory;
    protected $fillable =[
        'skill',
        'student_id'
    ];
}
