import {Inject, Injectable, Get} from '@nestjs/common';
import { Client } from 'pg';
@Injectable()
export class LocationsService {
  constructor(@Inject("PG") private location: Client ) {}


  @Get()
  mostrarlocation() {
    return new Promise((resolve, reject) => {
      this.location.query("SELECT *FROM  querylocation()", (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res.rows);
      });
    });
  }
}
