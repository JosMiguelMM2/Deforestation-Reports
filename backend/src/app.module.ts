import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DatabaseModule } from './infrastructure/database/database.module';
import {userRepository} from './domain/repositories/user.repository'
import { UsersController } from './app/controllers/users/users.controller';

@Module({
  imports: [DatabaseModule],
  controllers: [AppController, UsersController],
  providers: [AppService, userRepository],
})
export class AppModule {}
