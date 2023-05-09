import { Global, Module } from "@nestjs/common";
import { Client } from "pg";

export const conection=new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'proyec',
  password:'kiup-QUY.+*1094Rxsdp;uy',
  port: 5432,
});

conection.connect();


@Global()
@Module({
  providers:[
    {
      provide: 'PG',
      useValue: conection,
    },
  ],
  exports: ['PG']
})
export class SuperposgreModule {}
