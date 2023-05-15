import { Injectable, UnauthorizedException } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { InjectRepository } from "@nestjs/typeorm";
import { ExtractJwt, Strategy } from "passport-jwt";
import { Repository } from "typeorm";

import { User } from "./user.entity";
// ! activar para usar el secret desde .env
// import config from '../../interfaces/config/configutation'
import { JwtPayload } from "./jwt-payload.interface";

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy){
  constructor(
    @InjectRepository(User)
    private userRepository: Repository<User>
  ) {
    super({
      // Remplazar por el config
      secretOrKey: 'your-secret-key-here',
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken()
    });
  }

  async validate(payload: JwtPayload): Promise<User>{
    const { email } = payload;
    const user = this.userRepository.findOneBy({email});

    if (!user) {
      throw new UnauthorizedException();
    }

    return user;
  }
}
