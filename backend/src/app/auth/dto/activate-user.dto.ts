import { IsNotEmpty, IsUUID } from "class-validator";

export class ActivateUserDto {
  @IsNotEmpty()
  // @IsUUID('4')
  id: number;

  @IsNotEmpty()
  // @IsUUID('4')
  code: string;
}
