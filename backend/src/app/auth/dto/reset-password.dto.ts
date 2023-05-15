import { IsNotEmpty, IsString, Length } from "class-validator";

export class ResetPasswordDto {
  @IsNotEmpty()
  @IsString()
  resetPasswordToken: string;

  @IsNotEmpty()
  @Length(6,20)
  password: string;
}
