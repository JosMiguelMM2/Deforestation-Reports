import {ChangeDetectorRef, Component, ElementRef} from '@angular/core';
import {ReportesService} from '../../services/reportes/reportes.service';
declare var google: any;
@Component({
  selector: 'app-reportes',
  templateUrl: './reportes.component.html',
  styleUrls: ['./reportes.component.css']
})
export class ReportesComponent {
  datos: any = [];
  adelante: number =3;
  atras: number = 0;
  filteredDatos: any[] = [];
  mapDiv:any;
  mapDiv1:any;
  mapDiv2:any;
  constructor(private ReporteSer: ReportesService, private cdr: ChangeDetectorRef) {
  }

  Reportes() {
    this.ReporteSer.getreportlocation().subscribe(
      (datos) => {
        this.datos = datos;
        this.modeloformateoFechaA(this.datos, 'p_datetime');
        this.modeloNumerico(this.datos, 'p_latitude');
        this.modeloNumerico(this.datos, 'p_longitude');
        this.filteredDatos = this.datos.slice(this.atras, this.adelante);
        this.crearmapa(this.mapDiv,0);
        this.crearmapa(this.mapDiv1,1);
        this.crearmapa(this.mapDiv2,2);

      },
      (error) => {
        console.error(error);
      }
    );
  }


  crearmapa(slector:any, posicion:number){
    if (google ){
          let myMap = new google.maps.Map(slector, {
            center: {lat: this.filteredDatos[posicion].p_latitude, lng: this.filteredDatos[posicion].p_longitude},
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP
          });
          console.log(myMap);
    }


    // for(let i=this.atras; i<this.adelante; i++){
    //   if (google ){
    //     console.log('hola');
    //     let elemntoceeado= document.createElement('div');
    //     elemntoceeado.id=`map_canvas_${i}`;
    //     elemntoceeado.style.width='100%';
    //     elemntoceeado.style.height='100%';
    //     //margeb debajo de cada elemento
    //     elemntoceeado.style.marginBottom='24rem';
    //     //agregar a el vid denominado map_canvas
    //     this.mapDiv.appendChild(elemntoceeado);
    //     let myMap = new google.maps.Map(document.getElementById(`map_canvas_${i}`) as HTMLElement, {
    //       center: {lat: this.filteredDatos[0+i].p_latitude, lng: this.filteredDatos[0+i].p_longitude},
    //
    //       zoom: 10,
    //       mapTypeId: google.maps.MapTypeId.ROADMAP
    //     });
    //     console.log(myMap);
    //   }
    // }


  }

  modeloformateoFechaA(arre: any[], variableformat: string) {
    for (let i = 0; i < arre.length; i++) {
      let fecha = arre[i][variableformat];
      fecha = new Date(fecha);
      let fechaFormateada = fecha.toLocaleDateString();
      arre[i][variableformat] = fechaFormateada;
    }

  }

  modeloNumerico(array: any[], miString: string){
    for (let i = 0; i < array.length; i++) {
      let numconver= array[i][miString];
      let miNumero = parseFloat(numconver);
      array[i][miString] = miNumero;
    }

  }

  siguiente() {
    if(this.adelante>=this.datos.length){
      this.adelante=this.datos.length;
    }else{
      this.atras = this.adelante;
      this.adelante = this.adelante + 3;
      this.filteredDatos = this.datos.slice(this.atras, this.adelante);
      this.Reportes();
      console.log(this.atras);
    }
  }


  anteriores() {
    if(this.atras<=0 && this.adelante<=3){
      this.atras=0;
      this.adelante=3;
    }else{
      this.adelante = this.adelante-3;
      this.atras = this.atras - 3;
      this.filteredDatos = this.datos.slice(this.atras, this.adelante);
      this.Reportes();
    }
  }

  ngOnInit(): void {
    //this.Reportes();
    this.mapDiv = document.getElementById('map_canvas') as HTMLElement;
    this.mapDiv1 = document.getElementById('map_canvas_1') as HTMLElement;
    this.mapDiv2 = document.getElementById('map_canvas_2') as HTMLElement;
  }
  ngAfterViewInit(): void {
    this.Reportes();
  }

}
