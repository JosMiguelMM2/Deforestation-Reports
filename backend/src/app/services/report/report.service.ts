import { Injectable,Inject, Get, Post, Put, Patch, Delete  } from '@nestjs/common';
import { Client } from 'pg';

@Injectable()
export class ReportService {

  constructor(
    @Inject("PG") private report: Client
  ){
  }

  @Get()
  getreport(){
    return new Promise((resolve, reject) => {
      this.report.query("SELECT * FROM queryreport()", (err, res) => {
        if(err) {
          reject(err);
        }
        resolve(res.rows);
      });
    });
  }

  @Get()
  getreportlocal(){
    return new Promise((resolve, reject) => {
      this.report.query(`SELECT * FROM querylocationsreport()`, (err, res) => {
        if(err) {
          reject(err);
        }
        resolve(res.rows);
      });
    });
  }

  @Get('id:')
  getreportbyid(id: number){
    return new Promise((resolve, reject) => {
      this.report.query("SELECT * FROM queryidreport($1)", [id], (err, res) => {
        if(err){
          reject(err);
        }
        resolve(res.rows[0]);
      });
    });
  }

  @Post()
  createreport(Report: any) {
    return new Promise((resolve, reject) => {
      this.report.query("SELECT insertreport($1, $2, $3, $4, $5)", [Report.Report, Report.Datetime, Report.idDeforest, Report.idAffectation, Report.idCity], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updatereport(id: number, Report: any) {
    return new Promise((resolve, reject) => {
      this.report.query("SELECT updatereport($1, $2, $3, $4, $5, $6)", [id, Report.Report, Report.Datetime, Report.idDeforest, Report.idAffectation, Report.idCity], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
//
  @Delete(':id')
  deletereport(id: number) {
    return new Promise((resolve, reject) => {
      this.report.query("SELECT deletereport($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
