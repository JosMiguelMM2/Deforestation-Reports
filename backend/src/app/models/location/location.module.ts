import { Module } from '@nestjs/common';
import { Client } from 'pg';

export const client=new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'proyec',
  password:'kiup-QUY.+*1094Rxsdp;uy',
  port: 5432,
});

client.connect();
client.query('SELECT *FROM  queryuser()',(err, res) => {
  console.log(err, res)
  console.log(res.rows);
})
@Module({})
export class LocationModule {}
