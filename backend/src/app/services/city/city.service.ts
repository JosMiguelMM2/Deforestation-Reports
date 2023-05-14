import { Inject, Injectable, Get, Post, Put, Patch, Delete} from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class CityService {

  constructor(
    @Inject("PG") private city: Client
  ){
  }

  @Get()
  getcity() {
    return new Promise((resolve, reject) => {
      this.city.query("SELECT * FROM querycity()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}

@Get(':id')
getcitybyid(id: number){
  return new Promise((resolve, reject) =>{
    this.city.query("SELECT * FROM queryidcity($1)", [id], (err, res) => {
      if (err) {
        reject(err);
    }
    resolve(res.rows[0]);
  });
});
}

@Post()
createcity(city: any) {
  return new Promise((resolve, reject) => {
    this.city.query("SELECT insertcity($1, $2)", [city.Name, city.addres], (err, res) => {
      if (err) {
        reject(err);
      }
      resolve(res);
    });
  });
}

@Put(':id')
updatecity(id: number, city: any) {
  return new Promise((resolve, reject) => {
    this.city.query("SELECT updatecity($1, $2, $3)", [id, city.Name, city.addres], (err, res) => {
      if (err) {
        reject(err);
      }
      resolve(res);
    });
  });
}
@Delete(':id')
deletecity(id: number) {
  return new Promise((resolve, reject) => {
    this.city.query("SELECT deletecity($1)", [id], (err, res) => {
      if (err) {
        reject(err);
      }
        resolve(res);
      });
    });
  }
}
