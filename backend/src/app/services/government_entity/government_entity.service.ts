import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class GovernmentEntityService {

  constructor(
    @Inject("PG") private goventity: Client
  ){
  }

  @Get()
  getgoventity() {
    return new Promise((resolve, reject) => {
      this.goventity.query("SELECT * FROM querygovernment_entity()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getgoventitybyid(id: number){
    return new Promise((resolve, reject) =>{
      this.goventity.query("SELECT * FROM queryidgovernment_entity($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  creategoventity(goventity: any) {
    return new Promise((resolve, reject) => {
      this.goventity.query("SELECT insertgovernment_entity($1)", [goventity.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updategoventity(id: number, goventity: any) {
    return new Promise((resolve, reject) => {
      this.goventity.query("SELECT updategovernment_entity($1, $2)", [id, goventity.Name], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deletegoventity(id: number) {
    return new Promise((resolve, reject) => {
      this.goventity.query("SELECT deletegovernment_entity($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
