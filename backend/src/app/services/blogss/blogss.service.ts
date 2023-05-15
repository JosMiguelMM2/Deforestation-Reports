import { Injectable,Inject, Get, Post, Put, Patch, Delete  } from '@nestjs/common';
import { Client } from 'pg';
///
@Injectable()
export class BlogssService {

  constructor(
    @Inject("PG") private blogss: Client
  ){
  }

  @Get()
  getblogss(){
    return new Promise((resolve, reject) => {
      this.blogss.query("SELECT * FROM queryblogs()", (err, res) => {
        if(err) {
          reject(err);
        }
        resolve(res.rows);
      });
    });
  }

  @Get('id:')
  getblogbyid(id: number){
    return new Promise((resolve, reject) => {
      this.blogss.query("SELECT * FROM queryidblogs($1)", [id], (err, res) => {
        if(err){
          reject(err);
        }
        resolve(res.rows[0]);
      });
    });
  }

  @Post()
  createblog(blog: any) {
    return new Promise((resolve, reject) => {
      this.blogss.query("SELECT insertblogs($1, $2, $3, $4, $5, $6)", [blog.Title, blog.content, blog.created_at, blog.updated_at, blog.published, blog.idUser], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updateblog(id: number, blog: any) {
    return new Promise((resolve, reject) => {
      this.blogss.query("SELECT updateblogs($1, $2, $3, $4, $5, $6, $7)", [id, blog.Title, blog.content, blog.created_at, blog.updated_at, blog.published, blog.idUser], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
//
  @Delete(':id')
  deleteblog(id: number) {
    return new Promise((resolve, reject) => {
      this.blogss.query("SELECT deleteblogs($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
