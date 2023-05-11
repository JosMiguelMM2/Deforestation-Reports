import { Test, TestingModule } from '@nestjs/testing';
import { EntityUserService } from './entity_user.service';

describe('EntityUserService', () => {
  let service: EntityUserService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EntityUserService],
    }).compile();

    service = module.get<EntityUserService>(EntityUserService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
