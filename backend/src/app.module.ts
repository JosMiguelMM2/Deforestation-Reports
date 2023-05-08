import { Module } from '@nestjs/common';
import { CorsModule } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [CorsModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
