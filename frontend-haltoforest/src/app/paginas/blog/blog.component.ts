import { Component } from '@angular/core';
import { BlogService } from '../../services/blogs/blog.service';

@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrls: ['./blog.component.css']
})
export class BlogComponent {
  numblo:any=4;
  datos:any=[];
  constructor(private BlogService: BlogService){}

  obtenerDatos() {
    this.BlogService.getblogs().subscribe(
      (datos) => {
        this.datos = datos;
        //this.formateoFecha();
        this.modeloformateoFechaA( this.datos,'p_created_at');
        this.modeloformateoFechaA( this.datos,'p_updated_at');
      },
      (error) => {
        console.error(error);
      }
    );
  }

  modeloformateoFechaA( arre:any[],variableformat:string) {
    for(let i=0;i<arre.length;i++) {
      let fecha = arre[i][variableformat];
      fecha = new Date(fecha);
      let fechaFormateada = fecha.toLocaleDateString();
      arre[i][variableformat] = fechaFormateada;
    }

  }

  aumenBlogs(){
    this.numblo=this.numblo+2;
  }
  //lo que siempre debe mostrar al cargar la pagina
  ngOnInit(): void {
    this.obtenerDatos();

  }
}
