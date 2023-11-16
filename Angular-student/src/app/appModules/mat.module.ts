import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {MatButtonModule} from '@angular/material/button';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatIconModule} from '@angular/material/icon';
import {MatInputModule} from '@angular/material/input';
import {MatSelectModule} from '@angular/material/select';
import {MatRadioModule} from '@angular/material/radio';
import {MatTableModule} from '@angular/material/table';
import {MatDatepickerModule} from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import {MatTooltipModule} from '@angular/material/tooltip';
import {MatDialogModule} from '@angular/material/dialog';




const material = [
  MatButtonModule,
  MatToolbarModule,
  MatIconModule,
  MatInputModule,
  MatSelectModule,
  MatRadioModule,
  MatTableModule,
  MatDatepickerModule,
  MatNativeDateModule,
  MatTooltipModule,
  MatDialogModule
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    material
  ],
exports: [
  material
]
})
export class MatModule { }
