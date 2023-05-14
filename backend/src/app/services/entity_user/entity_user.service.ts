import { Injectable,Inject, Get, Post, Put, Patch, Delete  } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class EntityUserService {

  constructor(
    @Inject("PG") private entityuser: Client
  ){
  }

  @Get()
  getentityuser(){
    return new Promise((resolve, reject) => {
      this.entityuser.query("SELECT * FROM queryentity_user()", (err, res) => {
        if(err) {
          reject(err);
        }
        resolve(res.rows);
      });
    });
  }

  @Get('id:')
  getentityuserbyid(id: number){
    return new Promise((resolve, reject) => {
      this.entityuser.query("SELECT * FROM queryidentity_user($1)", [id], (err, res) => {
        if(err){
          reject(err);
        }
        resolve(res.rows[0]);
      });
    });
  }

  @Post()
  createntityuser(entityuser: any) {
    return new Promise((resolve, reject) => {
      this.entityuser.query("SELECT insertentity_user($1, $2)", [entityuser.idGoverenty, entityuser.idUser], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
  @Put(':id')
  updateentityuser(id: number, entityuser: any) {
    return new Promise((resolve, reject) => {
      this.entityuser.query("SELECT updateentity_user($1, $2, $3)", [id,entityuser.idGoverenty, entityuser.idUser], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deleteentityuser(id: number) {
    return new Promise((resolve, reject) => {
      this.entityuser.query("SELECT deleteentity_user($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
