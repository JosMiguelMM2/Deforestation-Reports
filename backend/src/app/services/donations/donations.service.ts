import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class DonationsService {

  constructor(
    @Inject("PG") private donations: Client
  ){
  }

  @Get()
  getdonations() {
    return new Promise((resolve, reject) => {
      this.donations.query("SELECT * FROM querydonations()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
    });
  }

  @Get(':id')
  getdonationsbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.donations.query("SELECT * FROM queryiddonations($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
        resolve(res.rows[0]);
     });
    });
  }
  @Post()
  createdonations(donations: any) {
    return new Promise((resolve, reject) => {
      this.donations.query("SELECT insertdonations($1, $2, $3, $4, $5)", [donations.Name, donations.iduser, donations.idpayment, donations.idfrecuency, donations.idAmount], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updatedonations(id: number, donations: any) {
    return new Promise((resolve, reject) => {
      this.donations.query("SELECT updatedonations($1, $2, $3, $4, $5, $6)", [id, donations.Name, donations.iduser, donations.idpayment, donations.idfrecuency, donations.idAmount], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
//
  @Delete(':id')
  deletedonations(id: number) {
    return new Promise((resolve, reject) => {
      this.donations.query("SELECT deletedonations($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
