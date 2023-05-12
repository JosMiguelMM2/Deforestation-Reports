import { Component } from '@angular/core';

@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrls: ['./blog.component.css']
})
export class BlogComponent {

  //lo que se muestra al cargar la pagina
  ngOnInit(): void {
    alert("hola")
  }
}
