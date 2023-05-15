import { Injectable,Inject, Get, Post, Put, Patch, Delete  } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class FrecuencyService {

  constructor(
    @Inject("PG") private frecuency: Client
  ){
  }

  @Get()
  getfrecuency(){
    return new Promise((resolve, reject) => {
      this.frecuency.query("SELECT * FROM queryfrecuency()", (err, res) => {
        if(err) {
          reject(err);
        }
        resolve(res.rows);
      });
    });
  }

  @Get('id:')
  getfrecuencybyid(id: number){
    return new Promise((resolve, reject) => {
      this.frecuency.query("SELECT * FROM queryidfrecuency($1)", [id], (err, res) => {
        if(err){
          reject(err);
        }
        resolve(res.rows[0]);
      });
    });
  }

  @Post()
  createfrecuency(frcy: any) {
    return new Promise((resolve, reject) => {
      this.frecuency.query("SELECT insertfrecuency($1)", [frcy.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updatefrecuency(id: number, frcy: any) {
    return new Promise((resolve, reject) => {
      this.frecuency.query("SELECT updatefrecuency($1, $2)", [id, frcy.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
//
  @Delete(':id')
  deletefrecuency(id: number) {
    return new Promise((resolve, reject) => {
      this.frecuency.query("SELECT deletefrecuency($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
