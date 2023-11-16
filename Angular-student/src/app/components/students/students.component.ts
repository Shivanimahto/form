import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/service/data.service';
import { FormArray,FormControl, FormControlName, FormGroup, FormBuilder,Validators } from '@angular/forms';
import { DialogAnimationsExampleDialogComponent } from '../dialog-animations-example-dialog/dialog-animations-example-dialog.component';
import { MatDialog } from '@angular/material/dialog';
import { trigger, state, style, transition, animate } from '@angular/animations';
import { EditExampleComponent } from '../edit-example/edit-example.component';
import { Router } from '@angular/router';




export interface Student{
  id:number;
  name: string;
  email:string;
  branch:string;
  age:number;
  contact_number:number;
  gender:string;
 }


@Component({
  selector: 'app-students',
  templateUrl: './students.component.html',
  styleUrls: ['./students.component.css'],
  animations: [
    // the fade-in/fade-out animation.
    trigger('simpleFadeAnimation', [

      // the "in" style determines the "resting" state of the element when it is visible.
      state('in', style({opacity: 1})),

      // fade in when created. this could also be written as transition('void => *')
      transition(':enter', [
        style({opacity: 0}),
        animate(200)
      ]),

      // fade out when destroyed. this could also be written as transition('void => *')
      transition(':leave',
        animate(400, style({opacity: 0})))
    ])
  ]
})
export class StudentsComponent implements OnInit{
students:any;

displayedColumns: string[] = ['id', 'name', 'branch', 'age','contact_number','gender','action'];
dataSource:any;



constructor(private dataService:DataService, private _formBuilder:FormBuilder,public dialog: MatDialog,private router: Router){ }

openDialog(item: any) {

  let dialogRef = this.dialog.open(DialogAnimationsExampleDialogComponent, {
    width: '250px',
    height: '250px'
  });

  dialogRef.afterClosed().subscribe(result => {
    console.log(`Dialog result: ${result}`);
    if(result)
    {

      this.deleteData(item.id);
    }
  });

}

editDialog(item: any) {

  let dialogRef = this.dialog.open(EditExampleComponent, {
    width: '250px',
    height: '250px'
  });

  dialogRef.afterClosed().subscribe(result => {
    console.log(`Dialog result: ${result}`);
    if(result)
    {

      this.router.navigate(['/edit/', item.id]);
    }
  });

}





studentForm !: FormGroup;

ngOnInit(): void {
  this.getStudentData();

  this.studentForm = this._formBuilder.group({
   name:['',[Validators.required]],
   email:['',[Validators.required,Validators.email]],
   branch:['',[Validators.required]],
   age:['',[Validators.required]],
   contact_number:['',[Validators.required,Validators.minLength(10)]],
   gender:[null,[Validators.required]],
   skills: this._formBuilder.array([])
  });
}

get skillControls(){
  return this.studentForm.get('skills') as FormArray;
}

onAddSkill(){
  this.skillControls.push(this._formBuilder.control(''));
}

getStudentData(){
this.dataService.getData().subscribe(res => {
this.students = res;
this.dataSource = res;
});
}

insertData(){
  //console.log('this.studentForm.value',this.studentForm.value);

  this.dataService.insertData(this.studentForm.value).subscribe(res =>{
    this.studentForm.reset();
    this.getStudentData();
 });
}

deleteData(id:any){
this.dataService.deleteData(id).subscribe(res => {
  this.getStudentData();
})
}

}
