import { Controller, Get } from "@nestjs/common";
import { SuperpostService } from "../../../infrastructure/database/superpost.service";

@Controller('user')
export class UserController {
  constructor( private readonly superpostservice: SuperpostService ){}

  @Get('mostrar')
  async mostrar(){
    const datos =await this.superpostservice.callProceso();
    return datos;
  }
}
