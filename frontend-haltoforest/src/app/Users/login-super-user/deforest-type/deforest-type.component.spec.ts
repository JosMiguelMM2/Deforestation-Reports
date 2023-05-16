import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DeforestTypeComponent } from './deforest-type.component';

describe('DeforestTypeComponent', () => {
  let component: DeforestTypeComponent;
  let fixture: ComponentFixture<DeforestTypeComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DeforestTypeComponent]
    });
    fixture = TestBed.createComponent(DeforestTypeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
