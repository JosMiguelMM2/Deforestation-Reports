import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ReportssComponent } from './reportss.component';

describe('ReportssComponent', () => {
  let component: ReportssComponent;
  let fixture: ComponentFixture<ReportssComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ReportssComponent]
    });
    fixture = TestBed.createComponent(ReportssComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
