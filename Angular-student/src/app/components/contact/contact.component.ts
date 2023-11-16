import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/service/data.service';
import {MatDialog, MatDialogRef, MatDialogModule} from '@angular/material/dialog';
import { FormGroup, FormControlName, FormBuilder, Validators , FormArray} from '@angular/forms';
import { DialogAnimationsExampleDialogComponent } from '../dialog-animations-example-dialog/dialog-animations-example-dialog.component';
import { trigger, state, style, transition, animate } from '@angular/animations';
import { EditExampleComponent } from '../edit-example/edit-example.component';
import { Router } from '@angular/router';







export interface Contact {
  number:number;
  name: string;
  password:string;
  birth:number;
  country:string;

}


@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css'],
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
export class ContactComponent implements OnInit{
contacts:any;
files:any;





displayedColumns: string[] = ['id', 'name', 'password','birth', 'country','action'];
  dataSource: any;
  updateContact: any;


constructor(private dataService:DataService, private _formBuilder:FormBuilder,public dialog: MatDialog,private router: Router){ }


openDialog(item: any) {

  let dialogRef = this.dialog.open(DialogAnimationsExampleDialogComponent, {
    width: '250px',
    height: '250px'
  });

  dialogRef.afterClosed().subscribe(result => {
    console.log(`Dialog result: ${result}`); // Pizza!
    if(result)
    {

      this.deleteContact(item.id);
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

      this.router.navigate(['/contact/edit/', item.id]);
    }
  });




}

contactForm !: FormGroup;
ngOnInit(): void {
  this.getContactData();
  this.contactForm = this._formBuilder.group({
    name:['',[Validators.required]],
    password:['',[Validators.required,Validators.minLength(5)]],
    birth:null,
    country:null,
    emails: this._formBuilder.array([]),
    phones: this._formBuilder.array([]),

  });

}


get emailControls(){
   return this.contactForm.get('emails') as FormArray;
}

onAddEmail(){
this.emailControls.push(this._formBuilder.control(''));
}
get phoneControls(){
  return this.contactForm.get('phones') as FormArray;
}

onAddPhone(){
 this.phoneControls.push(this._formBuilder.control(''));
}

getContactData(){
this.dataService.getContact().subscribe(res =>{
  this.contacts = res;
  this.dataSource = res;
})
}

insertContact(){

this.dataService.insertContact(this.contactForm .value).subscribe(res => {
this.contactForm.reset();
this.getContactData();
});
}


deleteContact(id:any){
this.dataService.deleteContact(id).subscribe(res=>{
this.getContactData();
});
}

}
