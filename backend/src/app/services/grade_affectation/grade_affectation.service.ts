import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';


@Injectable()
export class GradeAffectationService {

  constructor(
    @Inject("PG") private Graffect: Client
  ){
  }

  @Get()
  getGraffect() {
    return new Promise((resolve, reject) => {
      this.Graffect.query("SELECT * FROM querygradeaffectation()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getGraffectbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.Graffect.query("SELECT * FROM queryidgradeaffectation($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}

  @Post()
  createGraffect( grade: any) {
    return new Promise((resolve, reject) => {
      this.Graffect.query("SELECT insertgradeaffectation($1, $2)", [grade.Name, grade.Description], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updateGraffect(id: number, grade: any) {
    return new Promise((resolve, reject) => {
      this.Graffect.query("SELECT updategradeaffectation($1, $2, $3)", [id, grade.Name, grade.Description], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deleteGraffect(id: number) {
    return new Promise((resolve, reject) => {
      this.Graffect.query("SELECT deletegradeaffectation($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
