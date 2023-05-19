import {Component, ElementRef, OnInit, ViewChild} from '@angular/core';

declare var google: any;

@Component({
  selector: 'app-api-maps',
  templateUrl: './api-maps.component.html',
  styleUrls: ['./api-maps.component.css']
})

export class ApiMapsComponent implements OnInit {
  //@ViewChild('map_canvas', { static: false }) map_canvas!: ElementRef;

  constructor() {
  }

  crearmapa() {
    if (google) {
      let myMap = new google.maps.Map(document.getElementById('map_canvas') as HTMLElement, {
        center: {lat: 8.56813930, lng: -70.35838790},
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });
      console.log('eror ', myMap);
    }
    // var marker = new google.maps.Marker({
    // position: {lat: YOUR_LATITUDE, lng: YOUR_LONGITUDE},
    //   map: myMap,
    //   title: 'Hello World!'
    // });
  }

  ngOnInit(): void {
    // this.crearmapa()
  }

  ngAfterViewInit(): void {
    //this.crearmapa();
  }
}
