import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EntityUserComponent } from './entity-user.component';

describe('EntityUserComponent', () => {
  let component: EntityUserComponent;
  let fixture: ComponentFixture<EntityUserComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [EntityUserComponent]
    });
    fixture = TestBed.createComponent(EntityUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
