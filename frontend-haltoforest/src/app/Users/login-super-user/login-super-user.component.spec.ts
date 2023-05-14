import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LoginSuperUserComponent } from './login-super-user.component';

describe('LoginSuperUserComponent', () => {
  let component: LoginSuperUserComponent;
  let fixture: ComponentFixture<LoginSuperUserComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [LoginSuperUserComponent]
    });
    fixture = TestBed.createComponent(LoginSuperUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
