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
      port:parseInt(process.env.DB_PORT,10),
      database: process.env.DB_DATABASE,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
    });
  }
  async callProceso(): Promise<any> {
    return this.db.func('SELECT * FROM queryuser()');
  }
}
