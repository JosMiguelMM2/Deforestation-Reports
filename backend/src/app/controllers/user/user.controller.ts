import {Controller, Get, Param, ParseIntPipe, ValidationPipe, UsePipes, Post, Body} from '@nestjs/common';
import { UsersService } from '../../services/users/users.service';
@Controller('user')
export class UserController {
  constructor(private readonly usersService: UsersService) {
  }

  @Get('todos')
  getTodos() {
    return this.usersService.mostraruser();
  }

  @Get('usuario/:id')
  @UsePipes(new ValidationPipe({transform: true}))
  unosolo(@Param('id', ParseIntPipe) id: number) {
    return this.usersService.unusuarioporid(id);
  }

  //insertar datos de usuario

  @Post('singup')
  singUp(@Body() payload: {FirstName: string, SecondName: string, FirstSurname: string, SecondSurname: string, email: string, password:string,
    idCity: number, idPhone: number, idGender: number, idUser_type: number }){
      
    return this.usersService.signup(payload.FirstName, payload.SecondName, payload.FirstSurname, payload.SecondSurname, payload.email, payload.password,
      payload.idCity, payload.idPhone, payload.idGender, payload.idUser_type);
  }


}
