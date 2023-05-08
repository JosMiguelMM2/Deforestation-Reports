import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
@Module({
  imports:[
    TypeOrmModule.forRoot({
      //base de datos tipo postgressql
      type: 'postgres',
      host: 'localhost',
      port: 5432,
      username: 'postgres',
      password: 'kiup-QUY.+*1094Rxsdp;uy',
      database:'proyec',
      entities: [],
      synchronize: true,
    })
  ],
})
export class DatabaseModule {}
