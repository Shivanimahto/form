import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/service/data.service';
import { FormArray,FormControl, FormControlName, FormGroup, FormBuilder,Validators } from '@angular/forms';
import { DialogAnimationsExampleDialogComponent } from '../dialog-animations-example-dialog/dialog-animations-example-dialog.component';
import { MatDialog } from '@angular/material/dialog';
import { trigger, state, style, transition, animate } from '@angular/animations';
import { EditExampleComponent } from '../edit-example/edit-example.component';
import { Router } from '@angular/router';


export interface Teacher{
  id:number;
  name: string;
  email:string;
  contact_number:string;
  state:string;
  school_name:string;
 }


@Component({
  selector: 'app-teacher',
  templateUrl: './teacher.component.html',
  styleUrls: ['./teacher.component.css'],
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
export class TeacherComponent implements OnInit{
  teachers:any;

  displayedColumns: string[] = ['id', 'name', 'email', 'contact_number','state','school_name','action'];
  dataSource:any;

  constructor(private _formBuilder:FormBuilder, private dataService:DataService,public dialog: MatDialog,private router: Router ){ }


  openDialog(item: any) {

    let dialogRef = this.dialog.open(DialogAnimationsExampleDialogComponent, {
      width: '250px',
      height: '250px'
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log(`Dialog result: ${result}`);
      if(result)
      {

        this.deleteTeacher(item.id);
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

        this.router.navigate(['/teacher/edit/', item.id]);
      }
    });

  }



  teacherForm !: FormGroup;
  ngOnInit(): void {
    this.getTeacherData();
    this.teacherForm = this._formBuilder.group({
    name:['',[Validators.required]],
    email:['',[Validators.required,Validators.email]],
    contact_number:['',[Validators.required,Validators.minLength(10)]],
    state:['',[Validators.required]],
    school_name:['',[Validators.required]],
    departments: this._formBuilder.array([])


  });

  }

  get departmentControls(){
    return this.teacherForm.get('departments') as FormArray;
  }

  onAddDepartment(){
    this.departmentControls.push(this._formBuilder.control(''));
  }

  getTeacherData(){
   this.dataService.getTeacher().subscribe( res =>{
    this.teachers = res;
    this. dataSource=res;
   });
  }

  insertTeacher(){
    this.dataService.insertTeacher(this.teacherForm.value).subscribe(res =>{
      this.teacherForm.reset();
    this.getTeacherData();
 });
  }

  deleteTeacher(id:any){
   this.dataService.deleteTeacher(id).subscribe(res =>{
   this.getTeacherData();
  });
  }

}
