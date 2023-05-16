import { Global, Module } from "@nestjs/common";
import { Pool } from "pg";
import * as process from "process";
import config from "../../../interfaces/config/configutation";

const databaseConfig = config().database;
console.log(databaseConfig);
const user = databaseConfig.username;
const host = databaseConfig.host;
const database = databaseConfig.database;
const password = databaseConfig.password;
const port = databaseConfig.port;



export const conection=new Pool({
  user: user,
  host: host,
  database: database,
  password: password,
  port: port,
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
