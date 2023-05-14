import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { FrecuencyService } from '../../services/frecuency/frecuency.service';

@Controller('frecuency')
export class FrecuencyController {

  constructor(private frecuencyService: FrecuencyService){}

  @Get()
  getblogs(){
    return this.frecuencyService.getfrecuency();
  }

  @Get(':id')
  getblosId(@Param('id',ParseIntPipe)id: number){
    return this.frecuencyService.getfrecuencybyid(id);
  }

  @Post()
  createblogs(@Body() frcy: any){
  return this.frecuencyService.createfrecuency(frcy);
  }

  @Put(':id')
  updateblogs(@Param('id',ParseIntPipe) id: number, @Body() frcy: any){
    return this.frecuencyService.updatefrecuency(id, frcy);
  }

  @Delete(':id')
  deleteblogs(@Param('id', ParseIntPipe) id: number) {
    return this.frecuencyService.deletefrecuency(id);
  }
}
