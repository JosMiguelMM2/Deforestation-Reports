import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { PaymentService } from '../../services/payment/payment.service';


@Controller('payment')
export class PaymentController {

  constructor(private paymentService: PaymentService){}

@Get()
  getPayment(){
  return this.paymentService.getpayment();
}

@Get(':id')
  getPaymenttid(@Param('id',ParseIntPipe)id: number){
  return this.paymentService.getpaymentbyid(id);
}

@Post()
  createPayment(@Body() payment: any){
  return this.paymentService.createpayment(payment);
  }


@Put(':id')
  updatePayment(@Param('id',ParseIntPipe) id: number, @Body() payment: any){
    return this.paymentService.updatepayment(id, payment);
  }

@Delete(':id')
  deletePayment(@Param('id', ParseIntPipe) id: number) {
    return this.paymentService.deletepayment(id);
  }
}
