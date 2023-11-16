import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/service/data.service';
import { ActivatedRoute } from '@angular/router';


import { FormControl, FormControlName, FormGroup, FormBuilder, Form, FormArray } from '@angular/forms';


@Component({
  selector: 'app-edit-student',
  templateUrl: './edit-student.component.html',
  styleUrls: ['./edit-student.component.css']
})
export class EditStudentComponent implements OnInit{
  id:any;
  data:any;



  constructor(private dataService:DataService, private _formBuilder:FormBuilder, private route:ActivatedRoute){ }

  editStudentForm !: FormGroup;

  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'];
    this.getData();

    this.editStudentForm = this._formBuilder.group({
      name:[''],
      email:[''],
      branch:[''],
      age:[''],
      contact_number:[''],
      skills:this._formBuilder.array([]),
    });

  }

get skillControls(){
  return this.editStudentForm.get('skills') as FormArray;
}

onEditSkill(){
  this.skillControls.push(this._formBuilder.control(''));
}

  getData(){
    this.dataService.getStudentById(this.id).subscribe((res:any) => {
      this.data=res;
      this.editStudentForm.patchValue({
        name: res.name,
        email: res.email,
        branch: res.branch,
        age: res.age,
        contact_number:res.contact_number,
      });

      this.setSkills(res.skill);
    });
  }

  setSkills(skills:any){
    skills.forEach((x:any)=>{
      this.skillControls.push(this._formBuilder.control(x.skill));
    })
  }
  updateData(){
    this.dataService.getUpdateData(this.id, this.editStudentForm.value).subscribe(res => {
    this.editStudentForm.reset();
    });
  }

}
