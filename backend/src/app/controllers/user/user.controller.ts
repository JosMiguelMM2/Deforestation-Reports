import { Controller, Get} from '@nestjs/common';
import { UsersService } from '../../services/users/users.service';
@Controller('user')
export class UserController {
  constructor(private readonly usersService: UsersService) {}
  @Get('todos')
  getTodos() {
    return this.usersService.mostraruser();
  }
}
