import { EntityRepository, Repository } from "typeorm";

@EntityRepository()
export class userRepository extends Repository<any> {
  async getusers() {
    return this.query("SELECT *FROM queryuser()");
  }
}

