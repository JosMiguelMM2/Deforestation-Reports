import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './paginas/home/home.component';
import { FormulariosComponent } from './pagina/formularios/formularios.component';
import { MapasComponent } from './paginas/mapas/mapas.component';
import { MapasGoogleComponent } from './paginas/mapas-google/mapas-google.component';
import { MapasMapboxComponent } from './paginas/mapas-mapbox/mapas-mapbox.component';
<<<<<<< HEAD
import { LoginComponent } from './Users/login/login.component';
import { LoginUserComponent } from './Users/login-user/login-user.component';
import { SingUpComponent } from './Users/sing-up/sing-up.component';



=======
import {BlogComponent} from "./paginas/blog/blog.component";
>>>>>>> d4d4e6da063ebac9cb8d1b6e30b4003ed26a819f

const routes: Routes = [
  
  {path:"",component:HomeComponent},
  {path: "formularios",component:FormulariosComponent},
  {path: "mapas",component:MapasComponent},
  {path: "mapas/google",component:MapasGoogleComponent},
  {path: "mapas/mapbox",component:MapasMapboxComponent},
<<<<<<< HEAD
  {path: "login",component:LoginComponent},
  {path: "login-user",component: LoginUserComponent},
  {path: "sing-up",component: SingUpComponent},
=======
  {path: "blog",component:BlogComponent}
>>>>>>> d4d4e6da063ebac9cb8d1b6e30b4003ed26a819f
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
