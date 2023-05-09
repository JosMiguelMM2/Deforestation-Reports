import { Injectable } from '@nestjs/common';
import * as pgPromise from 'pg-promise';

import config from '../../interfaces/config/configutation';

@Injectable()
export class SuperpostService {
  private db: any;
  constructor() {
    const pgp = pgPromise();
    this.db = pgp({
      host: config().database.host,
      port: config().database.port,
      database: config().database.database,
      user: config().database.username,
      password: config().database.password,
    });
  }
  async callProceso(): Promise<any> {
    return this.db.func('SELECT * FROM queryuser()');
  }
}
