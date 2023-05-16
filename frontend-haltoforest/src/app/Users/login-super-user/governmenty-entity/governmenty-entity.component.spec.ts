import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GovernmentyEntityComponent } from './governmenty-entity.component';

describe('GovernmentyEntityComponent', () => {
  let component: GovernmentyEntityComponent;
  let fixture: ComponentFixture<GovernmentyEntityComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [GovernmentyEntityComponent]
    });
    fixture = TestBed.createComponent(GovernmentyEntityComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
