import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class GenderService {

  constructor(
    @Inject("PG") private gender: Client
  ){
  }
  @Get()
  getgender() {
    return new Promise((resolve, reject) => {
      this.gender.query("SELECT * FROM querygender()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getgenderbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.gender.query("SELECT * FROM queryidgender($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  creategender(gender: any) {
    return new Promise((resolve, reject) => {
      this.gender.query("SELECT insertgender($1)", [gender.Category], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updategender(id: number, gender: any) {
    return new Promise((resolve, reject) => {
      this.gender.query("SELECT updategender($1, $2)", [id, gender.Category], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deletegender(id: number) {
    return new Promise((resolve, reject) => {
      this.gender.query("SELECT deletegender($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
