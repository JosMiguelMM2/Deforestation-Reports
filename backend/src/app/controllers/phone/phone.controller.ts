import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { PhoneService } from '../../services/phone/phone.service';


@Controller('phone')
export class PhoneController {

  constructor(private phoneService: PhoneService){}

@Get()
  getPhone(){
  return this.phoneService.getphone();
}

@Get(':id')
  getPhoneid(@Param('id',ParseIntPipe)id: number){
  return this.phoneService.getphonetbyid(id);
}

@Post()
  createPhone(@Body() phone: any){
  return this.phoneService.createphone(phone);
  }


@Put(':id')
  updatePhone(@Param('id',ParseIntPipe) id: number, @Body() phone: any){
    return this.phoneService.updatephone(id, phone);
  }

@Delete(':id')
  deletePhone(@Param('id', ParseIntPipe) id: number) {
    return this.phoneService.deletephone(id);
  }
}
