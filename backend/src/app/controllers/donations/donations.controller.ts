import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body} from '@nestjs/common';
import{ DonationsService } from '../../services/donations/donations.service';

@Controller('donations')
export class DonationsController {

  constructor(private donationService: DonationsService) {}

  @Get()
  getDonation(){
    return this.donationService.getdonations();
  }
  @Get(':id')
  getDonationId(@Param('id',ParseIntPipe)id: number){
    return this.donationService.getdonationsbyid(id);
  }

  @Post()
  createdonations(@Body() donations: any){
  return this.donationService.createdonations(donations);
  }

  @Put(':id')
  updatedonations(@Param('id',ParseIntPipe) id: number, @Body() donations: any){
    return this.donationService.updatedonations(id, donations);
  }

  @Delete(':id')
  deletedonations(@Param('id', ParseIntPipe) id: number) {
    return this.donationService.deletedonations(id);
  }
}
