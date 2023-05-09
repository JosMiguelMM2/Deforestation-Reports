import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SuperpostService } from './infrastructure/database/superpost.service';
import { UserController } from './app/controllers/user/user.controller';

@Module({
  imports: [],
  controllers: [AppController, UserController],
  providers: [AppService, SuperpostService],
})
export class AppModule {}
