import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class UserTypeService {

  constructor(
    @Inject("PG") private ustype: Client
  ){
  }

  @Get()
  getustype() {
    return new Promise((resolve, reject) => {
      this.ustype.query("SELECT * FROM queryuser_type()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getustypebyid(id: number){
    return new Promise((resolve, reject) =>{
      this.ustype.query("SELECT * FROM queryiduser_type($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  createustype(ustype: any) {
    return new Promise((resolve, reject) => {
      this.ustype.query("SELECT insertuser_type($1)", [ustype.Type], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updateustype(id: number, ustype: any) {
    return new Promise((resolve, reject) => {
      this.ustype.query("SELECT updateuser_type($1, $2)", [id, ustype.Type], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deleteustype(id: number) {
    return new Promise((resolve, reject) => {
      this.ustype.query("SELECT deleteuser_type($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
