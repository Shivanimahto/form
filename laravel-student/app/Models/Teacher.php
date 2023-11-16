<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    use HasFactory;
    protected $fillable = [
      'name',
      'email',
      'contact_number',
      'state',
      'school_name',
    ];

    public function department(){
        return $this->hasMany(TeacherDepartment::class,'teacher_id','id');
    }
}
