import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DataService } from 'src/app/service/data.service';
import { FormGroup, FormControlName, FormBuilder,FormArray } from '@angular/forms';

@Component({
  selector: 'app-edit-contact',
  templateUrl: './edit-contact.component.html',
  styleUrls: ['./edit-contact.component.css']
})
export class EditContactComponent implements OnInit{
id:any;
data:any;

  constructor(private _formBuilder:FormBuilder, private dataService:DataService, private route:ActivatedRoute){ }
  editContact !: FormGroup;
  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'];
    this.getContact();

    this.editContact =this._formBuilder.group({
      name:[''],
      password:[''],
      country:null,
      emails:this._formBuilder.array([]),
      phones:this._formBuilder.array([]),
    });

  }


  get emailControls(){
    return this.editContact.get('emails') as FormArray;
  }

  onEditEmail(){
    this.emailControls.push(this._formBuilder.control(''));
  }

  get phoneControls(){
    return this.editContact.get('phones') as FormArray;
  }

  onEditPhone(){
    this.phoneControls.push(this._formBuilder.control(''));
  }

  getContact(){
   this.dataService.getContactById(this.id).subscribe((res:any) =>{
     this.data=res;
     this.editContact.patchValue({
      name:res.name,
      password:res.password,
      country:res.country
      });

      this.setEmails(res.email);
      this.setPhones(res.number);

    });
  }


  setEmails(emails:any){
    emails.forEach((x:any)=>{
      this.emailControls.push(this._formBuilder.control(x.email));
    });

  }

  setPhones(phones:any){
    phones.forEach((x:any)=>{
      this.phoneControls.push(this._formBuilder.control(x.number));
    });

  }

  updateContact(){
    this.dataService.updateContact(this.id, this.editContact.value).subscribe( res => {
      this.editContact.reset();
    });
  }

}
