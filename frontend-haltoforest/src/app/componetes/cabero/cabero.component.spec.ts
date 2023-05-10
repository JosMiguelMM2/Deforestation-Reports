import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CaberoComponent } from './cabero.component';

describe('CaberoComponent', () => {
  let component: CaberoComponent;
  let fixture: ComponentFixture<CaberoComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CaberoComponent]
    });
    fixture = TestBed.createComponent(CaberoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
