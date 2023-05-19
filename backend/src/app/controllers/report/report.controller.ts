import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import{ ReportService } from '../../services/report/report.service';

@Controller('report')
export class ReportController {

  constructor(private reportService: ReportService){}

  @Get()
  getReport(){
    return this.reportService.getreport();
  }

  @Get('localizacionreport')
  getReportLocal(){
    return this.reportService.getreportlocal();
  }

  @Get(':id')
  getReportId(@Param('id',ParseIntPipe)id: number){
    return this.reportService.getreportbyid(id);
  }

  @Post()
  createReport(@Body() report: any){
  return this.reportService.createreport(report);
  }

  @Put(':id')
  updateReport(@Param('id',ParseIntPipe) id: number, @Body() report: any){
    return this.reportService.updatereport(id, report);
  }

  @Delete(':id')
  deleteReport(@Param('id', ParseIntPipe) id: number) {
    return this.reportService.deletereport(id);
  }
}
