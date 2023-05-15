import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './paginas/home/home.component';
import { FormulariosComponent } from './pagina/formularios/formularios.component';
import { MapasComponent } from './paginas/mapas/mapas.component';
import { MapasGoogleComponent } from './paginas/mapas-google/mapas-google.component';
import { MapasMapboxComponent } from './paginas/mapas-mapbox/mapas-mapbox.component';
import { LoginComponent } from './Users/login/login.component';
import { LoginUserComponent } from './Users/login-user/login-user.component';
import { SingUpComponent } from './Users/sing-up/sing-up.component';
import {BlogComponent} from "./paginas/blog/blog.component";
import { ApiMapsComponent } from './paginas/api-maps/api-maps.component';

const routes: Routes = [

  {path:"",component:HomeComponent},
  {path: "formularios",component:FormulariosComponent},
  {path: "mapas",component:MapasComponent},
  {path: "mapas/google",component:MapasGoogleComponent},
  {path: "mapas/mapbox",component:MapasMapboxComponent},
  {path: "login",component:LoginComponent},
  {path: "login-user",component: LoginUserComponent},
  {path: "sing-up",component: SingUpComponent},
  {path: "blog",component:BlogComponent},
  {path: "gmaps", component:ApiMapsComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
