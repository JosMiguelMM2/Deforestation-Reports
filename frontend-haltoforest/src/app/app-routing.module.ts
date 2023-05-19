import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {HomeComponent} from './paginas/home/home.component';
import {LoginComponent} from './Users/login/login.component';
import {LoginUserComponent} from './Users/login-user/login-user.component';
import {SingUpComponent} from './Users/sing-up/sing-up.component';
import {BlogComponent} from "./paginas/blog/blog.component";
import {ApiMapsComponent} from './paginas/api-maps/api-maps.component';
import {ReportssComponent} from './Users/login-super-user/reportss/reportss.component';
import {StatisticalaDataComponent} from './Users/login-super-user/statisticala-data/statisticala-data.component';
import {UserssComponent} from './Users/login-super-user/userss/userss.component';
import {AfectacionComponent} from './Users/login-super-user/afectacion/afectacion.component';
import {BlogsComponent} from './Users/login-super-user/blogs/blogs.component';
import {AmountComponent} from './Users/login-super-user/amount/amount.component';
import {CityComponent} from './Users/login-super-user/city/city.component';
import {DeforestTypeComponent} from './Users/login-super-user/deforest-type/deforest-type.component';
import {DonationsComponent} from './Users/login-super-user/donations/donations.component';
import {EntityUserComponent} from './Users/login-super-user/entity-user/entity-user.component';
import {FrecuencyComponent} from './Users/login-super-user/frecuency/frecuency.component';
import {GenderComponent} from './Users/login-super-user/gender/gender.component';
import {GovernmentyEntityComponent} from './Users/login-super-user/governmenty-entity/governmenty-entity.component';
import {LocationsComponent} from './Users/login-super-user/locations/locations.component';
import {PaymentComponent} from './Users/login-super-user/payment/payment.component';
import {PhoneComponent} from './Users/login-super-user/phone/phone.component';
import {UserBlogsComponent} from './Users/login-super-user/user-blogs/user-blogs.component';
import {LoginSuperUserComponent} from './Users/login-super-user/login-super-user.component';
import {ReportesComponent} from './paginas/reportes/reportes.component';


const routes: Routes = [
//ojala
  {path: "", component: HomeComponent},
  {path: "login", component: LoginComponent},
  {path: "login-user", component: LoginUserComponent},
  {path: "sing-up", component: SingUpComponent},
  {path: "blog", component: BlogComponent},
  {path: "gmaps", component: ApiMapsComponent},
  {path: "login-super-user", component: LoginSuperUserComponent},
  {path: "sing-up", component: SingUpComponent},
  {path: "reportss", component: ReportssComponent},
  {path: "statisticala-data", component: StatisticalaDataComponent},
  {path: "userss", component: UserssComponent},
  {path: "afectacion", component: AfectacionComponent},
  {path: "amount", component: AmountComponent},
  {path: "blogs", component: BlogsComponent},
  {path: "city", component: CityComponent},
  {path: "deforest-type", component: DeforestTypeComponent},
  {path: "donations", component: DonationsComponent},
  {path: "entity-user", component: EntityUserComponent},
  {path: "frecuency", component: FrecuencyComponent},
  {path: "gender", component: GenderComponent},
  {path: "government-entity", component: GovernmentyEntityComponent},
  {path: "locations", component: LocationsComponent},
  {path: "payment", component: PaymentComponent},
  {path: "phone", component: PhoneComponent},
  {path: "user-blogs", component: UserBlogsComponent},
  {path: "reportes", component: ReportesComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
