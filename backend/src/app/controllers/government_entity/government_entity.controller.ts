import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import{ GovernmentEntityService } from '../../services/government_entity/government_entity.service';

@Controller('government-entity')
export class GovernmentEntityController {

  constructor(private goventityService: GovernmentEntityService){}

  @Get()
  getGoventity(){
  return this.goventityService.getgoventity();
}

@Get(':id')
  getGoventityid(@Param('id',ParseIntPipe)id: number){
  return this.goventityService.getgoventitybyid(id);
}

@Post()
  createGoventity(@Body() goventity: any){
  return this.goventityService.creategoventity(goventity);
  }


@Put(':id')
  updateGoventity(@Param('id',ParseIntPipe) id: number, @Body() goventity: any){
    return this.goventityService.updategoventity(id, goventity);
  }

@Delete(':id')
  deleteGoventity(@Param('id', ParseIntPipe) id: number) {
    return this.goventityService.deletegoventity(id);
  }
}
