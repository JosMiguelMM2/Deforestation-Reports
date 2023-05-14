import {Component, OnInit} from '@angular/core';
import { BackendService } from '../../services/backend.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements  OnInit{
  datos:any=[];

  constructor(private backendService: BackendService) {
  }
  ngOnInit() {
    this.obtenerDatos();
  }
  obtenerDatos() {
    this.backendService.getData().subscribe(
      (datos) => {
        this.datos = datos;
        console.log(this.datos)
      },
      (error) => {
        console.error(error);
      }
    );
  }
}
