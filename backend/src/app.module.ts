import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SuperposgreModule } from './infrastructure/database/superposgre/superposgre.module';
import { UserController } from './app/controllers/user/user.controller';
import { UsersService } from './app/services/users/users.service';

@Module({
  imports: [SuperposgreModule],
  controllers: [AppController, UserController],
  providers: [AppService, UsersService],
  exports: [],
})
export class AppModule {}
