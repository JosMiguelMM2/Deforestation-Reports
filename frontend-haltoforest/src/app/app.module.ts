//librerias del sistema
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { CookieService } from 'ngx-cookie-service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

//Importacion de archivos locales
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './paginas/home/home.component';
import { ComponentesComponent } from './componentes/componentes.component';
import { CaberoComponent } from './componetes/cabero/cabero.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { FooterComponent } from './componentes/footer/footer.component';
import { LoginComponent } from './Users/login/login.component';
import { LoginUserComponent } from './Users/login-user/login-user.component';
import { LoginSuperUserComponent } from './Users/login-super-user/login-super-user.component';
import { SingUpComponent } from './Users/sing-up/sing-up.component';
import { BlogComponent } from './paginas/blog/blog.component';
import { ApiMapsComponent } from './paginas/api-maps/api-maps.component';
import { ReportssComponent } from './Users/login-super-user/reportss/reportss.component';
import { StatisticalaDataComponent } from './Users/login-super-user/statisticala-data/statisticala-data.component';
import { UserssComponent } from './Users/login-super-user/userss/userss.component';
import { AfectacionComponent } from './Users/login-super-user/afectacion/afectacion.component';
import { BlogsComponent } from './Users/login-super-user/blogs/blogs.component';
import { AmountComponent } from './Users/login-super-user/amount/amount.component';
import { CityComponent } from './Users/login-super-user/city/city.component';
import { DeforestTypeComponent } from './Users/login-super-user/deforest-type/deforest-type.component';
import { DonationsComponent } from './Users/login-super-user/donations/donations.component';
import { EntityUserComponent } from './Users/login-super-user/entity-user/entity-user.component';
import { FrecuencyComponent } from './Users/login-super-user/frecuency/frecuency.component';
import { GenderComponent } from './Users/login-super-user/gender/gender.component';
import { GovernmentyEntityComponent } from './Users/login-super-user/governmenty-entity/governmenty-entity.component';
import { LocationsComponent } from './Users/login-super-user/locations/locations.component';
import { PaymentComponent } from './Users/login-super-user/payment/payment.component';
import { PhoneComponent } from './Users/login-super-user/phone/phone.component';
import { UserBlogsComponent } from './Users/login-super-user/user-blogs/user-blogs.component';
import { ReportesComponent } from './paginas/reportes/reportes.component';
import { SpinnerComponent } from './shared/spinner/spinner.component';
import { ToastrModule } from 'ngx-toastr';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ComponentesComponent,
    CaberoComponent,
    FooterComponent,
    LoginComponent,
    LoginUserComponent,
    LoginSuperUserComponent,
    SingUpComponent,
    BlogComponent,
    ApiMapsComponent,
    UserssComponent,
    ReportssComponent,
    StatisticalaDataComponent,
    AfectacionComponent,
    DeforestTypeComponent,
    CityComponent,
    PhoneComponent,
    LocationsComponent,
    GenderComponent,
    FrecuencyComponent,
    PaymentComponent,
    AmountComponent,
    BlogsComponent,
    GovernmentyEntityComponent,
    DonationsComponent,
    UserBlogsComponent,
    EntityUserComponent,
    ReportesComponent,
    SpinnerComponent,
  ],
  imports: [
    HttpClientModule,
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    ToastrModule.forRoot({
      timeOut: 4000,
      positionClass: 'toast-bottom-right',
      preventDuplicates: true
    })
  ],
  providers: [CookieService],
  bootstrap: [AppComponent]
})
export class AppModule { }
