import {Controller, Get, Param, Post, Put, Delete, ParseIntPipe, Body, NotFoundException} from '@nestjs/common';
import { LocationsService } from '../../services/locations/locations.service';
import { GoogleMapsService } from '../../services/google-maps/google-maps.service';

@Controller('locations')
export class LocationsController {

  constructor(private locationService: LocationsService, private googleMapsService: GoogleMapsService){}

  @Get()
  getLocations(){
    return this.locationService.getlocations();
  }

  @Get(':id')
  getLocationsId(@Param('id',ParseIntPipe)id: number){
    const consulta =this.locationService.getlocationsbyid(id);
    if (!consulta) {
      throw new NotFoundException('Lugar no encontrado');
    }
    return consulta;
  }
  @Post()
  async createLocations(@Body() locationData: any) {
    const { nameLocation, idReport } = locationData;

    // Obtener la latitud y longitud desde el servicio de Google Maps
    const { lat, lng } = await this.googleMapsService.getCoordinatesFromCurrentLocation();

    // Guardar los datos en el servicio de ubicaciones
    await this.locationService.saveLocation(lat, lng, nameLocation, idReport);

    return 'Ubicación creada correctamente.';
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
