import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditExampleComponent } from './edit-example.component';

describe('EditExampleComponent', () => {
  let component: EditExampleComponent;
  let fixture: ComponentFixture<EditExampleComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [EditExampleComponent]
    });
    fixture = TestBed.createComponent(EditExampleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
