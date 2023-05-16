import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UserssComponent } from './userss.component';

describe('UserssComponent', () => {
  let component: UserssComponent;
  let fixture: ComponentFixture<UserssComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [UserssComponent]
    });
    fixture = TestBed.createComponent(UserssComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
