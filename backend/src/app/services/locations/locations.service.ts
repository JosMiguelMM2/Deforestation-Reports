import { Inject, Injectable, Get, Post, Put, Patch, Delete } from '@nestjs/common';
import { Client } from 'pg';


@Injectable()
export class LocationsService {

  constructor(
    @Inject("PG") private locations: Client
  ){
    this.locations.connect();
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
      this.locations.query(`SELECT * FROM queryidlocations($1)`, [id], (err, res) => {
        if (err) {
          reject(err);
      }
      resolve(res.rows[0]);
    });
  });
}
  @Post()

  async saveLocation(latitude: number, longitude: number, nameLocation: string, idReport: number): Promise<void> {
    const location = {
      latitude,
      longitude,
    };
    try{
      const query = 'SELECT insertlocations($1, $2, $3, $4)';
      const values = [location.latitude, location.longitude, nameLocation, idReport];
      await this.locations.query(query, values);
    } catch (error) {
      throw new Error('Error al guardar la ubicación en la base de datos.');
    }
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
      });
    });
  }
}
