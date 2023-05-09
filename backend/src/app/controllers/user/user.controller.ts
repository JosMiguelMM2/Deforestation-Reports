import { Controller, Get } from "@nestjs/common";
import { SuperpostService } from "../../../infrastructure/database/superpost.service";

@Controller('user')
export class UserController {
  constructor( private readonly superpostservice: SuperpostService ){}

  @Get('mostrar')
  async mostrar():Promise<any>{
    const datos =await this.superpostservice.callProceso();
    return datos;
  }
}
