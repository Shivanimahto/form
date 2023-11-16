<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\TeacherDepartment;

class TeacherController extends Controller
{
    public function getTeacher(){
        return response()->json(Teacher::all(),200);
    }

    public function getTeacherById($id){
      $teacher = Teacher::with('department')->find($id);

      if(is_null($teacher))
      {
      return response()->json(['meassage'=>'teacher not found'],404);
      }
      return response()->json($teacher, 200);
    }

    public function addTeacher(Request $request){
        $teacher = Teacher::create($request->all());

        foreach ($request->departments as $key => $value)
        {
            $data['department'] = $value;
            $object = new TeacherDepartment($data);
            $teacher->department()->save($object);
        }

        return response($teacher,200);
    }

    public function updateTeacher(Request $request, $id){
      $teacher = Teacher::find($id);
      if(is_null($teacher)){
        return response()->json(['message','Teacher Not Found'],404);
      }
      $teacher->update($request->all());
      $teacher->department()->delete();
      foreach ($request->departments as $key => $value)
      {
        $data['department'] = $value;
        $object = new TeacherDepartment($data);
        $teacher->department()->save($object);
      }
      return response()->json($teacher, 200);
    }

    public function deleteTeacher(Request $request, $id){
        $teacher = Teacher::find($id);
            if(is_null($teacher)){
                return response()->json(['message','Teacher Not Found'],404);
            }

            $teacher->delete();
            return response()->json(null, 204);
        }
}
