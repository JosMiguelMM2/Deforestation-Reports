import { Controller, Get, Param, Post, Put,Delete, ParseIntPipe, Body } from '@nestjs/common';
import{ BlogssService } from '../../services/blogss/blogss.service';



@Controller('blog')
export class BlogsController {

constructor(private blogService: BlogssService){}

  @Get()
  getblogs(){
    return this.blogService.getblogss();
  }

  @Get(':id')
  getblosId(@Param('id',ParseIntPipe)id: number){
    return this.blogService.getblogbyid(id);
  }

  @Post()
  createblogs(@Body() blog: any){
  return this.blogService.createblog(blog);
  }

  @Put(':id')
  updateblogs(@Param('id',ParseIntPipe) id: number, @Body() blog: any){
    return this.blogService.updateblog(id, blog);
  }

  @Delete(':id')
  deleteblogs(@Param('id', ParseIntPipe) id: number) {
    return this.blogService.deleteblog(id);
  }
}
