import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './paginas/home/home.component';
import { LoginComponent } from './Users/login/login.component';
import { LoginUserComponent } from './Users/login-user/login-user.component';
import { SingUpComponent } from './Users/sing-up/sing-up.component';
import {BlogComponent} from "./paginas/blog/blog.component";
import { ApiMapsComponent } from './paginas/api-maps/api-maps.component';

const routes: Routes = [

  {path:"",component:HomeComponent},
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
