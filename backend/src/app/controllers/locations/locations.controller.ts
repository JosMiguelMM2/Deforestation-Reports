import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { LocationsService } from '../../services/locations/locations.service';

@Controller('locations')
export class LocationsController {

  constructor(private locationService: LocationsService){}

  @Get()
  getLocations(){
    return this.locationService.getlocations();
  }

  @Get(':id')
  getLocationsId(@Param('id',ParseIntPipe)id: number){
    return this.locationService.getlocationsbyid(id);
  }
  @Post()
  createLocations(@Body() location: any){
  return this.locationService.createlocations(location);
  }

  @Put(':id')
  updateLocations(@Param('id',ParseIntPipe) id: number, @Body() location: any){
    return this.locationService.updatelocations(id, location);
  }

  @Delete(':id')
  deleteLocations(@Param('id', ParseIntPipe) id: number) {
    return this.locationService.deletelocations(id);
  }
}
//
