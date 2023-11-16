import { Component, OnInit } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-edit-example',
  templateUrl: './edit-example.component.html',
  styleUrls: ['./edit-example.component.css']
})
export class EditExampleComponent implements OnInit{

  constructor(public dialogRef: MatDialogRef<EditExampleComponent>){ }

  ngOnInit(): void {

  }

}
