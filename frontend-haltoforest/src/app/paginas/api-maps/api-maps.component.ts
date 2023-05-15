import {Component, ElementRef, OnInit} from '@angular/core';
@Component({
  selector: 'app-api-maps',
  templateUrl: './api-maps.component.html',
  styleUrls: ['./api-maps.component.css']
})

export class ApiMapsComponent implements OnInit{

 //  constructor(private elementRef: ElementRef) {
 //  }
 //
 // crearMapa(){
 //   const mapElement = this.elementRef.nativeElement.querySelector('#map');
 //   const mapOptions: google.maps.MapOptions = {
 //     center: { lat: 40.7128, lng: -74.0060 }, // Coordenadas de ejemplo (Nueva York)
 //     zoom: 12,
 //   };
 //   const map = new google.maps.Map(mapElement, mapOptions);
 // }

  ngOnInit(): void {
    //this.crearMapa()
  }
}
