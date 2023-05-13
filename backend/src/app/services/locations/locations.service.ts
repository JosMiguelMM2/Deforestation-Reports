<<<<<<< HEAD
import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';


@Injectable()
export class LocationsService {

  constructor(
    @Inject("PG") private locations: Client
  ){
  }
  @Get()
  getlocations() {
    return new Promise((resolve, reject) => {
      this.locations.query("SELECT * FROM querylocations()", (err, res) => {
      if (err){
        reject(err);
      }
      resolve(res.rows);
      });
  });
}
  @Get(':id')
  getlocationsbyid(id: number){
    return new Promise((resolve, reject) =>{
      this.locations.query("SELECT * FROM queryidlocations($1)", [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}
  @Post()
  createlocations(location: any) {
    return new Promise((resolve, reject) => {
      this.locations.query("SELECT insertlocations($1, $2, $3, $4)", [location.latitude, location.longitude, location.nameLocation, location.idReport], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Put(':id')
  updatelocations(id: number, location: any) {
    return new Promise((resolve, reject) => {
      this.locations.query("SELECT updatelocations($1, $2, $3, $4, $5)", [id, location.latitude, location.longitude, location.nameLocation, location.idReport], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }

  @Delete(':id')
  deletelocations(id: number) {
    return new Promise((resolve, reject) => {
      this.locations.query("SELECT deletelocations($1)", [id], (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
=======
import {Inject, Injectable, Get} from '@nestjs/common';
import { Client } from 'pg';
@Injectable()
export class LocationsService {
  constructor(@Inject("PG") private location: Client ) {}


  @Get()
  mostrarlocation() {
    return new Promise((resolve, reject) => {
      this.location.query("SELECT *FROM  querylocation()", (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res.rows);
>>>>>>> 043fcf11fc46b6a3b6228b880473bb5371126361
      });
    });
  }
}
