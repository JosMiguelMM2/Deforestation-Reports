import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MapasComponent } from './mapas.component';

describe('MapasComponent', () => {
  let component: MapasComponent;
  let fixture: ComponentFixture<MapasComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [MapasComponent]
    });
    fixture = TestBed.createComponent(MapasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
