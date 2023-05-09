import { Injectable } from '@nestjs/common';
import * as pgPromise from 'pg-promise';
import * as process from "process";
@Injectable()
export class SuperpostService {
  private db: any;
  constructor() {
    const pgp = pgPromise();
    this.db=pgp({
      host: process.env.DB_HOST,
      database: process.env.DB_DATABASE,
      port:parseInt(process.env.DB_PORT,10),
      user: 'root',//process.env.DB_USER,
      password:process.env.DB_PASSWORD,
    });
  }
  async callProceso(): Promise<any> {
    const datos = this.db.func('SELECT queryuser()');
    return datos;
  }
}
