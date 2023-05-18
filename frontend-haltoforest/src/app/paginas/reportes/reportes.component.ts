import {Component} from '@angular/core';
import {ReportesService} from '../../services/reportes/reportes.service';

@Component({
  selector: 'app-reportes',
  templateUrl: './reportes.component.html',
  styleUrls: ['./reportes.component.css']
})
export class ReportesComponent {
  datos: any = [];
  mostrar: any = [];
  adelante:number=3;
  atras:number=0;

  constructor(private ReporteSer: ReportesService) {
  }

  Reportes() {
    this.ReporteSer.getreports().subscribe(
      (datos) => {
        this.datos = datos;
        this.mostrar=this.datos;
        this.modeloformateoFechaA(this.mostrar, 'p_datetime');
        console.log(this.mostrar)
      },
      (error) => {
        console.error(error);
      }
    );
  }

  modeloformateoFechaA(arre: any[], variableformat: string) {
    for (let i = 0; i < arre.length; i++) {
      let fecha = arre[i][variableformat];
      fecha = new Date(fecha);
      let fechaFormateada = fecha.toLocaleDateString();
      arre[i][variableformat] = fechaFormateada;
    }

  }


  siguiente () {
    this.adelante = this.adelante + 3;

  }

  anteriores(){
    this.atras= this.atras + 3;
  }

  ngOnInit(): void {
    this.Reportes();
  }
}
