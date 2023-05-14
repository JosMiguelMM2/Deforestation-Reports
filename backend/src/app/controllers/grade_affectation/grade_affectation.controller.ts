import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import { GradeAffectationService } from '../../services/grade_affectation/grade_affectation.service';

@Controller('grade-affectation')
export class GradeAffectationController {

  constructor(private gradeAffService: GradeAffectationService){}

  @Get()
  getgraffect(){
  return this.gradeAffService.getGraffect();
}

@Get(':id')
  getgraffectid(@Param('id',ParseIntPipe)id: number){
  return this.gradeAffService.getGraffectbyid(id);
}

@Post()
  creategraffect(@Body() Graffect: any){
  return this.gradeAffService.createGraffect(Graffect);
  }


@Put(':id')
  updategraffect(@Param('id',ParseIntPipe) id: number, @Body() Graffect: any){
    return this.gradeAffService.updateGraffect(id, Graffect);
  }

@Delete(':id')
  deletegraffect(@Param('id', ParseIntPipe) id: number) {
    return this.gradeAffService.deleteGraffect(id);
  }
}
