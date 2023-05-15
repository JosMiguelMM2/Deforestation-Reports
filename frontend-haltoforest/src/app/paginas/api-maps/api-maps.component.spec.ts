import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ApiMapsComponent } from './api-maps.component';

describe('ApiMapsComponent', () => {
  let component: ApiMapsComponent;
  let fixture: ComponentFixture<ApiMapsComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ApiMapsComponent]
    });
    fixture = TestBed.createComponent(ApiMapsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
