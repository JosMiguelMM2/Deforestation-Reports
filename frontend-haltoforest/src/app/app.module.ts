import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './paginas/home/home.component';
import { FormulariosComponent } from './pagina/formularios/formularios.component';
import { ComponentesComponent } from './componentes/componentes.component';
import { CaberoComponent } from './componetes/cabero/cabero.component';
import { MapasComponent } from './paginas/mapas/mapas.component';
import { MapasGoogleComponent } from './paginas/mapas-google/mapas-google.component';
import { MapasMapboxComponent } from './paginas/mapas-mapbox/mapas-mapbox.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { FooterComponent } from './componentes/footer/footer.component';
import { LoginComponent } from './Users/login/login.component';
import { LoginUserComponent } from './Users/login-user/login-user.component';
import { LoginSuperUserComponent } from './Users/login-super-user/login-super-user.component';
import { SingUpComponent } from './Users/sing-up/sing-up.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    FormulariosComponent,
    ComponentesComponent,
    CaberoComponent,
    MapasComponent,
    MapasGoogleComponent,
    MapasMapboxComponent,
    FooterComponent,
    LoginComponent,
    LoginUserComponent,
    LoginSuperUserComponent,
    SingUpComponent,
   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
 SVGFETileElement