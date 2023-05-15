import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SuperposgreModule } from './infrastructure/database/superposgre/superposgre.module';
import { UserController } from './app/controllers/user/user.controller';
import { UsersService } from './app/services/users/users.service';
import { AmountController } from './app/controllers/amount/amount.controller';
import { BlogsController } from './app/controllers/blogs/blogs.controller';
import { CityController } from './app/controllers/city/city.controller';
import { DeforestTypeController } from './app/controllers/deforest_type/deforest_type.controller';
import { DonationsController } from './app/controllers/donations/donations.controller';
import { EntityUserController } from './app/controllers/entity_user/entity_user.controller';
import { FrecuencyController } from './app/controllers/frecuency/frecuency.controller';
import { GenderController } from './app/controllers/gender/gender.controller';
import { GovernmentEntityController } from './app/controllers/government_entity/government_entity.controller';
import { GradeAffectationController } from './app/controllers/grade_affectation/grade_affectation.controller';
import { LocationsController } from './app/controllers/locations/locations.controller';
import { PaymentController } from './app/controllers/payment/payment.controller';
import { PhoneController } from './app/controllers/phone/phone.controller';
import { ReportController } from './app/controllers/report/report.controller';
import { UserTypeController } from './app/controllers/user_type/user_type.controller';
import { AmountsService } from './app/services/amounts/amounts.service';
import { BlogssService } from './app/services/blogss/blogss.service';
import { CityService } from './app/services/city/city.service';
import { DeforestTypeService } from './app/services/deforest_type/deforest_type.service';
import { DonationsService } from './app/services/donations/donations.service';
import { EntityUserService } from './app/services/entity_user/entity_user.service';
import { FrecuencyService } from './app/services/frecuency/frecuency.service';
import { GenderService } from './app/services/gender/gender.service';
import { GovernmentEntityService } from './app/services/government_entity/government_entity.service';
import { GradeAffectationService } from './app/services/grade_affectation/grade_affectation.service';
import { LocationsService } from './app/services/locations/locations.service';
import { PaymentService } from './app/services/payment/payment.service';
import { PhoneService } from './app/services/phone/phone.service';
import { ReportService } from './app/services/report/report.service';
import { UserTypeService } from './app/services/user_type/user_type.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from './app/auth/auth.module';
import { GoogleMapsService } from './app/services/google-maps/google-maps.service';
import config from './config/configuration'

@Module({
  imports: [
    SuperposgreModule,
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: config().database.host,
      port: config().database.port,
      username: config().database.username,
      password: config().database.password,
      database: config().database.database,
      entities: ['dist/**/*.entity.js'],
      synchronize: true,
    }),
    AuthModule
  ],
  controllers: [
    AppController,
    UserController,
    AmountController,
    BlogsController,
    CityController,
    DeforestTypeController,
    DonationsController,
    EntityUserController,
    FrecuencyController,
    GenderController,
    GovernmentEntityController,
    GradeAffectationController,
    LocationsController,
    PaymentController,
    PhoneController,
    ReportController,
    UserTypeController],
  providers: [
    AppService,
    UsersService,
    AmountsService,
    BlogssService,
    CityService,
    DeforestTypeService,
    DonationsService,
    EntityUserService,
    FrecuencyService,
    GenderService,
    GovernmentEntityService,
    GradeAffectationService,
    LocationsService,
    PaymentService,
    PhoneService,
    UserTypeService,
    ReportService,
    GoogleMapsService],
  exports: [],
})
export class AppModule { }
