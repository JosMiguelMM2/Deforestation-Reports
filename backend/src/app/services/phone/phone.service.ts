import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';


@Injectable()
export class PhoneService {

  constructor(
    @Inject("PG") private phones: Client
  ){
  }

  @Get()
  getphone() {
    return new Promise((resolve, reject) => {
      this.phones.query("SELECT * FROM queryphone()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getphonetbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.phones.query("SELECT * FROM queryidphone($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  createphone(phone: any) {
    return new Promise((resolve, reject) => {
      this.phones.query("SELECT insertphone($1)", [phone.Number], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updatephone(id: number, phone: any) {
    return new Promise((resolve, reject) => {
      this.phones.query("SELECT updatephone($1, $2)", [id, phone.Number], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deletephone(id: number) {
    return new Promise((resolve, reject) => {
      this.phones.query("SELECT deletephone($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
