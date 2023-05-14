import { Controller ,Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { CityService } from '../../services/city/city.service';

@Controller('city')
export class CityController {

  constructor(private cityService: CityService){}

  @Get()
  getcityy(){
  return this.cityService.getcity();
}
@Get(':id')
  getcityid(@Param('id',ParseIntPipe)id: number){
  return this.cityService.getcitybyid(id);
}

@Post()
  createcity(@Body() city: any){
  return this.cityService.createcity(city);
  }

  @Put(':id')
  updateamount(@Param('id',ParseIntPipe) id: number, @Body() city: any){
    return this.cityService.updatecity(id, city);
  }
  @Delete(':id')
  deleteamount(@Param('id', ParseIntPipe) id: number) {
    return this.cityService.deletecity(id);
  }
}
