import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';


@Injectable()
export class AmountsService {

  constructor(
    @Inject("PG") private amounts: Client
  ){
  }

  @Get()
  getAmount() {
    return new Promise((resolve, reject) => {
      this.amounts.query("SELECT * FROM queryamount()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getamoutbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.amounts.query("SELECT * FROM queryidamount($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  createamount(amount: any) {
    return new Promise((resolve, reject) => {
      this.amounts.query("SELECT insertamount($1)", [amount.Quantity], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updateamount(id: number, amount: any) {
    return new Promise((resolve, reject) => {
      this.amounts.query("SELECT updateamount($1, $2)", [id, amount.Quantity], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deleteamount(id: number) {
    return new Promise((resolve, reject) => {
      this.amounts.query("SELECT deleteamount($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
