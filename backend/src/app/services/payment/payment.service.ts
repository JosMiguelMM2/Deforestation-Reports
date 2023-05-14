import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class PaymentService {

  constructor(
    @Inject("PG") private payment: Client
  ){
  }

  @Get()
  getpayment() {
    return new Promise((resolve, reject) => {
      this.payment.query("SELECT * FROM querypayment()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getpaymentbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.payment.query("SELECT * FROM queryidpayment($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  createpayment(payment: any) {
    return new Promise((resolve, reject) => {
      this.payment.query("SELECT insertpayment($1)", [payment.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updatepayment(id: number, payment: any) {
    return new Promise((resolve, reject) => {
      this.payment.query("SELECT updatepayment($1, $2)", [id, payment.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deletepayment(id: number) {
    return new Promise((resolve, reject) => {
      this.payment.query("SELECT deletepayment($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
