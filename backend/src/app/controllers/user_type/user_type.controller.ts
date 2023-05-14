import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { UserTypeService } from '../../services/user_type/user_type.service';

@Controller('user-type')
export class UserTypeController {

  constructor(private ustypeService: UserTypeService){}

  @Get()
  getustype(){
  return this.ustypeService.getustype();
}

@Get(':id')
  getustypetid(@Param('id',ParseIntPipe)id: number){
  return this.ustypeService.getustypebyid(id);
}

@Post()
  createustype(@Body() ustype: any){
  return this.ustypeService.createustype(ustype);
  }


@Put(':id')
  updateustype(@Param('id',ParseIntPipe) id: number, @Body() ustype: any){
    return this.ustypeService.updateustype(id, ustype);
  }

@Delete(':id')
  deleteustype(@Param('id', ParseIntPipe) id: number) {
    return this.ustypeService.deleteustype(id);
  }
}
