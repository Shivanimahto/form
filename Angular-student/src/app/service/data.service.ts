import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  headers:any;
  file_up_headers:any;
  constructor(private httpClient:HttpClient) {

    let headers = new HttpHeaders()
    .set('Content-Type','application/json')
    .set('Access-Control-Allow-Origin', '*')
    .set('Accept','application/json');

    let file_up_headers = new HttpHeaders()
    .set('Content-Type', 'multipart/form-data')
    .set('Access-Control-Allow-Origin', '*')
    .set('Accept','application/json');


    this.headers = headers;
    this.file_up_headers = file_up_headers;

  }

  getData(){
  return this.httpClient.get('http://127.0.0.1:8000/api/students',{'headers': this.headers});
  }

  insertData(data:any){
   return this.httpClient.post('http://127.0.0.1:8000/api/getAddStudent',data,{'headers': this.headers});
  }

  deleteData(id:any){
    return this.httpClient.delete('http://127.0.0.1:8000/api/getDeleteStudent/'+id,{'headers': this.headers});
  }

  getStudentById(id:any){
    return this.httpClient.get('http://127.0.0.1:8000/api/student/'+id,{'headers': this.headers});
  }

  getUpdateData(id:any, data:any){
    return this.httpClient.put('http://127.0.0.1:8000/api/getUpdateStudent/'+id,data, { 'headers': this.headers });
  }

  getTeacher(){
    return this.httpClient.get('http://127.0.0.1:8000/api/teachers',{'headers': this.headers})
  }
  insertTeacher(data:any){
    return this.httpClient.post('http://127.0.0.1:8000/api/addTeacher',data,{'headers': this.headers});
  }

  deleteTeacher(id:any){
   return this.httpClient.delete('http://127.0.0.1:8000/api/deleteTeacher/'+id,{'headers': this.headers});
  }

  getTeacherById(id:any){
    return this.httpClient.get('http://127.0.0.1:8000/api/getTeacherById/'+id,{'headers': this.headers});

  }

  updateTeacher(id:any, data:any){
    return this.httpClient.put('http://127.0.0.1:8000/api/updateTeacher/'+id,data, { 'headers': this.headers });

  }

  getContact(){
  return this.httpClient.get('http://127.0.0.1:8000/api/contacts',{'headers': this.headers});

  }

  insertContact(data:any){
    return this.httpClient.post('http://127.0.0.1:8000/api/addContact',data,{'headers': this.file_up_headers});

  }

  deleteContact(id:any){
    return this.httpClient.delete('http://127.0.0.1:8000/api/deleteContact/'+id,{'headers': this.headers});

  }
  getContactById(id:any){
    return this.httpClient.get('http://127.0.0.1:8000/api/getContactById/'+id,{'headers': this.headers});

  }

  updateContact(id:any, data:any){
    return this.httpClient.put('http://127.0.0.1:8000/api/updateContact/'+id,data, { 'headers': this.headers });

  }

}
