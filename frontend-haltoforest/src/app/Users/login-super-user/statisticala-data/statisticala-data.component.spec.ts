import { ComponentFixture, TestBed } from '@angular/core/testing';

import { StatisticalaDataComponent } from './statisticala-data.component';

describe('StatisticalaDataComponent', () => {
  let component: StatisticalaDataComponent;
  let fixture: ComponentFixture<StatisticalaDataComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [StatisticalaDataComponent]
    });
    fixture = TestBed.createComponent(StatisticalaDataComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
