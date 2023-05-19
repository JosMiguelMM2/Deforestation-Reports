import { BadRequestException, ConflictException, Injectable, InternalServerErrorException, NotFoundException, UnauthorizedException, UnprocessableEntityException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { JwtService } from '@nestjs/jwt';
import { Repository } from 'typeorm';
import { v4 } from 'uuid'

import { User } from './user.entity';
import { RegisterUserDto } from './dto/resgister-user.dto';
import { LoginDto } from './dto/login.dto';
import { ActivateUserDto } from './dto/activate-user.dto';
import { RequestResetPasswordDto } from './dto/request-reset-password.dto';
import { ResetPasswordDto } from './dto/reset-password.dto';
import { EncoderService } from './encoder.service';
import { JwtPayload } from './jwt-payload.interface';
import { ChangePasswordDto } from './dto/change-password.dto';

@Injectable()
export class AuthService {
  constructor(
    @InjectRepository(User)
    private userRepository: Repository<User>,
    private encoderService: EncoderService,
    private jwtService: JwtService
  ) { }

  async registerUser(registerUserDto: RegisterUserDto): Promise<void> {
    const { name, lastName, city, address, phone, gender, email, password } = registerUserDto;
    const activationToken = v4();
    const hashedPassword = await this.encoderService.encodePassword(password);
    const user = this.userRepository.create({ name, lastName, city, address, phone, gender, email, password: hashedPassword, activationToken });

    try {
      await this.userRepository.save(user);
    } catch (error) {
      if (error.code === 'ERR_DUP_ENTRY') {
        throw new ConflictException('El email ya se encuentra registrado')
      }
      throw new InternalServerErrorException();
    }
  }

  async findOneByEmail(email: string): Promise<User> {
    const user = await this.userRepository.findOne({
      where: {
        email: email,
      },
    });

    if (!user) {
      throw new NotFoundException(`User with email ${email} not found`)
    }

    return user;
  }

  async login(loginDto: LoginDto): Promise<{ accessToken: string }> {
    const { email, password } = loginDto;
    const user: User = await this.findOneByEmail(email);

    if (await this.encoderService.checkPassword(password, user.password)) {
      const payload: JwtPayload = { id: user.id, email };
      const accessToken = await this.jwtService.sign(payload);

      return { accessToken };
    }
    throw new UnauthorizedException('Usuario o contrasena es incorrecto');
  }

  async findOneInactiveByIdAndActivationToken(id: number, code: string): Promise<User> {
    const user = await this.userRepository.findOne({
      where: {
        id,
        activationToken: code,
        active: false,
      },
    });
    return user;
  }

  async findOneByResetToken(resetPasswordToken: string): Promise<User> {
    const user: User = await this.userRepository.findOne({ where: { resetPasswordToken } })

    if (!user) {
      throw new NotFoundException();
    }

    return user;
  }

  async activateUser(activateUserDto: ActivateUserDto): Promise<void> {
    const { id, code } = activateUserDto;
    const user: User = await this.findOneInactiveByIdAndActivationToken(id, code);

    if (!user) {
      throw new UnprocessableEntityException('No se puede realizar esta acción');
    }

    user.active = true;
    await this.userRepository.save(user);
  }

  async requestResetPassword(requestResetPasswordDto: RequestResetPasswordDto): Promise<void> {
    const { email } = requestResetPasswordDto;
    const user: User = await this.findOneByEmail(email);
    user.resetPasswordToken = v4();
    this.userRepository.save(user);
    // Evento de email con MailerModule
  }

  async resetPassword(resetPasswordDto: ResetPasswordDto): Promise<void> {
    const { resetPasswordToken, password } = resetPasswordDto;
    const user: User = await this.findOneByResetToken(resetPasswordToken);

    user.password = await this.encoderService.encodePassword(password);
    user.resetPasswordToken = null;
    this.userRepository.save(user);
  }

  async changePassword(changePasswordDto: ChangePasswordDto, user: User): Promise<void> {
    const { oldPassword, newPassword } = changePasswordDto;
    if (await this.encoderService.checkPassword(oldPassword, user.password)) {
      user.password = await this.encoderService.encodePassword(newPassword);
      this.userRepository.save(user);
    } else {
      throw new BadRequestException('Contrasena anterior, no coincide');
    }
  }
}
