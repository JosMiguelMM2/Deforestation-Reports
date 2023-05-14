import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class DeforestTypeService {

  constructor(
    @Inject("PG") private Deforstyp: Client
  ){
  }

  @Get()
  getDeforstyp() {
    return new Promise((resolve, reject) => {
      this.Deforstyp.query("SELECT * FROM querydeforest_type()", (err, res) => {
      if (err){
        reject(err);
      }
        resolve(res.rows);
      });
    });
  }
  @Get(':id')
  getDeforstypbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.Deforstyp.query("SELECT * FROM queryiddeforest_type($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
        resolve(res.rows[0]);
      });
    });
  }

  @Post()
  createDeforstyp(deftyp: any) {
    return new Promise((resolve, reject) => {
      this.Deforstyp.query("SELECT insertdeforest_type($1)", [deftyp.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updateDeforstyp(id: number, deftyp: any) {
    return new Promise((resolve, reject) => {
      this.Deforstyp.query("SELECT updatedeforest_type($1, $2)", [id, deftyp.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deleteDeforstyp(id: number) {
    return new Promise((resolve, reject) => {
      this.Deforstyp.query("SELECT deletedeforest_type($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
