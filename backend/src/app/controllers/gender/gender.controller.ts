import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { GenderService } from '../../services/gender/gender.service';

@Controller('gender')
export class GenderController {

  constructor(private genderService: GenderService){}

  @Get()
  getGender(){
  return this.genderService.getgender();
}

@Get(':id')
  getGenderid(@Param('id',ParseIntPipe)id: number){
  return this.genderService.getgenderbyid(id);
}

@Post()
  createGender(@Body() gender: any){
  return this.genderService.creategender(gender);
  }


@Put(':id')
  updateGender(@Param('id',ParseIntPipe) id: number, @Body() gender: any){
    return this.genderService.updategender(id, gender);
  }

@Delete(':id')
  deleteGender(@Param('id', ParseIntPipe) id: number) {
    return this.genderService.deletegender(id);
  }
}
