import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { EntityUserService } from '../../services/entity_user/entity_user.service';


@Controller('entity-user')
export class EntityUserController {

  constructor(private entityUSService: EntityUserService){}

  @Get()
  getentityus(){
    return this.entityUSService.getentityuser();
  }

  @Get(':id')
  getentityusId(@Param('id',ParseIntPipe)id: number){
    return this.entityUSService.getentityuserbyid(id);
  }
  @Post()
  createentityus(@Body() entityus: any){
  return this.entityUSService.createntityuser(entityus);
  }

  @Put(':id')
  updateblogs(@Param('id',ParseIntPipe) id: number, @Body() entityus: any){
    return this.entityUSService.updateentityuser(id, entityus);
  }

  @Delete(':id')
  deleteblogs(@Param('id', ParseIntPipe) id: number) {
    return this.entityUSService.deleteentityuser(id);
  }
}
