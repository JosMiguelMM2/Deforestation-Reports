import { Controller, Get } from '@nestjs/common';
import { userRepository } from '../../../domain/repositories/user.repository';

@Controller('users')
export class UsersController {
  constructor(private userRepository:userRepository) {}
  @Get('us')
  getusers():Promise<any[]>{
    return this.userRepository.getusers();
  }

  @Get('uy')
  getusersy(){
    return this.userRepository.getusers();
  }
}
