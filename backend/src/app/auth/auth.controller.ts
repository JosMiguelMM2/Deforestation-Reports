import { Body, Controller, Get, Patch, Post, Query, UseGuards } from '@nestjs/common';
import { AuthService } from './auth.service';
import { RegisterUserDto } from './dto/resgister-user.dto'
import { LoginDto } from './dto/login.dto';
import { ActivateUserDto } from './dto/activate-user.dto';
import { RequestResetPasswordDto } from './dto/request-reset-password.dto'
import { ResetPasswordDto } from './dto/reset-password.dto';
import { ChangePasswordDto } from './dto/change-password.dto';
import { GetUser } from './get-user.decorator';
import { User } from './user.entity';
import { AuthGuard } from '@nestjs/passport';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) { }

  @Post('/register')
  register(@Body() registerUserDto: RegisterUserDto): Promise<void> {
    return this.authService.registerUser(registerUserDto);
  }

  @Post('/login')
  login(@Body() loginDto: LoginDto): Promise<{accessToken: string}> {
    return this.authService.login(loginDto);
  }

  @Get('/activate-account')
  activateAccount(@Query() activateUserDto: ActivateUserDto): Promise<void> {
    return this.authService.activateUser(activateUserDto);
  }

  @Patch('/request-reset-password')
  requestResetPassword(@Body() requestResetPasswordDto: RequestResetPasswordDto): Promise<void> {
    return this.authService.requestResetPassword(requestResetPasswordDto)
  }

  @Patch('/reset-password')
  resetPassword(@Body() resetPasswordDto: ResetPasswordDto): Promise<void>{
    return this.authService.resetPassword(resetPasswordDto)
  }

  @Patch('/change-password')
  @UseGuards(AuthGuard())
  changePassword(
    @Body() changePasswordDto: ChangePasswordDto,
    @GetUser() user: User
    ): Promise<void> {
      return this.authService.changePassword(changePasswordDto, user);
  }
}
