import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DataService } from 'src/app/service/data.service';
import { FormControl, FormControlName, FormGroup, FormBuilder, Form, FormArray } from '@angular/forms';


@Component({
  selector: 'app-edit-teacher',
  templateUrl: './edit-teacher.component.html',
  styleUrls: ['./edit-teacher.component.css']
})
export class EditTeacherComponent implements  OnInit{
id:any;
data:any;
constructor(private _formBuilder:FormBuilder, private dataService:DataService, private route:ActivatedRoute) { }
  editTeacherForm !: FormGroup;
  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'];
    this.getTeacher();

    this.editTeacherForm = this._formBuilder.group({
      name:[''],
      email:[''],
      contact_number:[''],
      state:[''],
      school_name:[''],
      departments:this._formBuilder.array([]),

    });
  }

  get departmentControls(){
    return this.editTeacherForm.get('departments') as FormArray;
  }

  onEditDepartment(){
    this.departmentControls.push(this._formBuilder.control(''));
  }

  getTeacher(){
    this.dataService.getTeacherById(this.id).subscribe((res:any) => {
      this.data=res;
      this.editTeacherForm.patchValue({
        name: res.name,
        email: res.email,
        contact_number:res.contact_number,
        state: res.state,
        school_name: res.school_name,


      });
      this.setDepartments(res.department);

    });
  }

  setDepartments(departments:any){
    departments.forEach((x:any)=>{
      this.departmentControls.push(this._formBuilder.control(x.department));
    });

  }

  updateTeacher(){
    this.dataService.updateTeacher(this.id, this.editTeacherForm.value).subscribe(res => {
      this.editTeacherForm.reset();
    });
  }

}
