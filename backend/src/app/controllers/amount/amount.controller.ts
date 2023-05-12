import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { AmountsService } from '../../services/amounts/amounts.service';
import { create } from 'domain';


@Controller('amount')
export class AmountController {

constructor(private amountService: AmountsService){}

@Get()
  getamount(){
  return this.amountService.getAmount();
}

@Get(':id')
  getamountid(@Param('id',ParseIntPipe)id: number){
  return this.amountService.getamoutbyid(id);
}

@Post()
  createamount(@Body() amount: any){
  return this.amountService.createamount(amount);
  }


@Put(':id')
  updateamount(@Param('id',ParseIntPipe) id: number, @Body() amount: any){
    return this.amountService.updateamount(id, amount);
  }

@Delete(':id')
  deleteamount(@Param('id', ParseIntPipe) id: number) {
    return this.amountService.deleteamount(id);
  }
}
