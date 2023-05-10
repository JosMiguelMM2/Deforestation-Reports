import { Global, Module } from "@nestjs/common";
import { Client } from "pg";
import * as process from "process";
import config from "../../../interfaces/config/configutation";

export const conection=new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'Haltodforest_DB',
  password:'password',
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
