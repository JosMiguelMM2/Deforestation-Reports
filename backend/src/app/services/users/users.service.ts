import {Injectable, Inject, Get, Post} from "@nestjs/common";
import {Client} from "pg";

@Injectable()
export class UsersService {
  constructor(@Inject("PG") private userdb: Client //tipado de coeccion
   ) {
  }

  @Get()
  mostraruser() {
    return new Promise((resolve, reject) => {
      this.userdb.query("SELECT *FROM  queryuser()", (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res.rows);
      }); //tenermos que tener un retorno para el controlador por ello tiene que ser una promesa
    });
  }

  //mostrar usuarios por id
  //get para comprobar por tipo id number

  unusuarioporid(id: number) {
    //retrornar una promesa con el id

    return new Promise((resolve, reject) => {
      const idr = [id];
      const queryid = `SELECT *
                       FROM queryiduser(${idr})`;
      this.userdb.query(queryid, (err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res.rows);
      }); //tenermos que tener un retorno para el controlador por ello tiene que ser una promesa
    });
  }
@Post()
  signup(FirstName: string, SecondName: string, FirstSurname: string, SecondSurname: string, email: string, password:string,
            idCity: number, idPhone: number, idGender: number, idUser_type: number) {

    return new Promise((resolve, reject) => {

      const inseruser = `SELECT insertuser($1, $2, $3,$4, $5, $6, $7, $8, $9, $10)`;
      const values= [FirstName, SecondName, FirstSurname, SecondSurname, email, password, idCity, idPhone, idGender, idUser_type];
      console.log(values);
      this.userdb.query(inseruser, values,(err, res) => {
        if (err) {
          reject(err);
        }
        resolve(res);
      });
    });
  }
}
