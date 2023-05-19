import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AfectacionComponent } from './afectacion.component';

describe('AfectacionComponent', () => {
  let component: AfectacionComponent;
  let fixture: ComponentFixture<AfectacionComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AfectacionComponent]
    });
    fixture = TestBed.createComponent(AfectacionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
