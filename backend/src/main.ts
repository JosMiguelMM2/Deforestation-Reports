import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

import config from './interfaces/config/configutation'

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // TODO: Agregar direccion del front al cors
  app.enableCors({
    origin: 'http://localhost:4200',
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
    allowedHeaders: 'Origin, X-Requested-With, Content-Type, Accept',
  });

  const port = config().port;
  await app.listen(port);
}

bootstrap();

// Path: src\app.module.ts
