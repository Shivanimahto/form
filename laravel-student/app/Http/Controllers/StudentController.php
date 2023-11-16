<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\StudentSkill;


class StudentController extends Controller
{
    public function getStudent(){
        return response()->json(Student::all(),200);
    }

    public function getStudentById($id){
        $student = Student::with('skill')->find($id);
        if(is_null($student)){
            return response()->json(['message' => 'student not found'],404);
        }
        return response()->json($student, 200);
    }

    public function getAddStudent(Request $request){
      $student = Student::create($request->all());

      foreach ($request->skills as $key => $value)
      {
        $data['skill'] = $value;
        $object = new StudentSkill($data);
        $student->skill()->save($object);
      }
      return response($student,200);
    }

    public function getUpdateStudent(Request $request, $id){
        $student = Student::find($id);
        if(is_null($student)){
            return response()->json(['message'=>'student not found'], 404);
        }
        $student->update($request->all());
        $student->skill()->delete();
        foreach($request->skills as $key => $value)
        {
            $data['skill'] = $value;
            $object = new StudentSkill($data);
            $student->skill()->save($object);
        }
        return response()->json($student, 200);
    }

    public function getDeleteStudent(Request $request, $id){
        $student = Student::find($id);
        if(is_null($student)){
            return response()->json(['message' => 'student not found'], 404);
        }
        $student->delete();
        return response()->json(null, 204);
    }

}
