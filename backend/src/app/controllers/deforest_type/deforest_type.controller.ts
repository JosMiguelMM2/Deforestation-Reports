import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { DeforestTypeService } from '../../services/deforest_type/deforest_type.service';

@Controller('deforest-type')
export class DeforestTypeController {

  constructor(private Deforestyp: DeforestTypeService){}

  @Get()
  getdeforstyp(){
  return this.Deforestyp.getDeforstyp();
  }

  @Get(':id')
  getdeforstypid(@Param('id',ParseIntPipe)id: number){
  return this.Deforestyp.getDeforstypbyid(id);
  }

  @Post()
  createdeforstyp(@Body() deftyp: any){
  return this.Deforestyp.createDeforstyp(deftyp);
  }
  @Put(':id')
  updatedeforstyp(@Param('id',ParseIntPipe) id: number, @Body() deftyp: any){
    return this.Deforestyp.updateDeforstyp(id, deftyp);
  }
  @Delete(':id')
  deletedeforstyp(@Param('id', ParseIntPipe) id: number) {
    return this.Deforestyp.deleteDeforstyp(id);
  }
}
