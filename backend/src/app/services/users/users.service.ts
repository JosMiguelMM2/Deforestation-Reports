import { Injectable, Inject, Get } from "@nestjs/common";
import { Client } from "pg";

@Injectable()
export class UsersService {
  constructor(
    @Inject("PG") private userst: Client //tipado de coeccion
  ) {
  }

  @Get()
  mostraruser() {
    return new Promise((resolve, reject) => {
      this.userst.query("SELECT *FROM  queryuser()", (err, res) => {
        if (err){
          reject(err);
        }
        resolve(res.rows);
      }); //tenermos que tener un retorno para el controlador por ello tiene que ser una promesa
    });
  }
}
