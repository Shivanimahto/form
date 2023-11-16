import { Component, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import {HttpClientModule} from '@angular/common/http';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { StudentsComponent } from './components/students/students.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { EditStudentComponent } from './components/edit-student/edit-student.component';
import { TeacherComponent } from './components/teacher/teacher.component';
import { EditTeacherComponent } from './components/edit-teacher/edit-teacher.component';
import { ContactComponent } from './components/contact/contact.component';
import { EditContactComponent } from './components/edit-contact/edit-contact.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {   MatModule } from './appModules/mat.module';
import { DialogAnimationsExampleDialogComponent } from './components/dialog-animations-example-dialog/dialog-animations-example-dialog.component';
import { EditExampleComponent } from './components/edit-example/edit-example.component';


const appRoutes:Routes=[
{path:'',component:StudentsComponent},
{path:'edit/:id',component:EditStudentComponent},
{path:'teacher',component:TeacherComponent},
{path:'teacher/edit/:id',component:EditTeacherComponent},
{path:'contact',component:ContactComponent},
{path:'contact/edit/:id',component:EditContactComponent}
];

@NgModule({
  declarations: [
    AppComponent,
    StudentsComponent,
    NavbarComponent,
    EditStudentComponent,
    TeacherComponent,
    EditTeacherComponent,
    ContactComponent,
    EditContactComponent,
    DialogAnimationsExampleDialogComponent,
    EditExampleComponent,

  ],
  // entryComponents:[DialogAnimationsExampleDialogComponent],

  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
    RouterModule.forRoot(appRoutes),
    BrowserAnimationsModule,
    MatModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
