import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';

import * as Joi from 'joi';


@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
