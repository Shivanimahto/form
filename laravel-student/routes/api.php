<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\ContactController;


//get all student details
Route::get('students', [StudentController::class, 'getStudent']);

//get special student detail by id
Route::get('student/{id}', [StudentController::class, 'getStudentById']);

// add student

Route::post('getAddStudent',[StudentController::class, 'getAddStudent']);

//update student
Route::put('getUpdateStudent/{id}',[StudentController::class,'getUpdateStudent']);

//delete student
Route::delete('getDeleteStudent/{id}',[StudentController::class,'getDeleteStudent']);


// get all Teacher details
Route::get('teachers',[TeacherController::class,'getTeacher']);
// get special Teacher details by id
Route::get('getTeacherById/{id}',[TeacherController::class,'getTeacherById']);
//get add Teacher Data
Route::post('addTeacher',[TeacherController::class,'addTeacher']);
//get Update Teacher Details
Route::put('updateTeacher/{id}',[TeacherController::class,'updateTeacher']);
//get delete Teacher details
Route::delete('deleteTeacher/{id}',[TeacherController::class,'deleteTeacher']);


//get all contact details
Route::get('contacts',[ContactController::class,'getContact']);
// get special contact details
Route::get('getContactById/{id}',[ContactController::class,'getContactById']);
// Add contact details
Route::post('addContact',[ContactController::class,'addContact']);
// update contact details
Route::put('updateContact/{id}',[ContactController::class,'updateContact']);
// delete contact
Route::delete('deleteContact/{id}',[ContactController::class,'deleteContact']);
/*
--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
