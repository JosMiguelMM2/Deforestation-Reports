import { Test, TestingModule } from '@nestjs/testing';
import { EntityUserController } from './entity_user.controller';

describe('EntityUserController', () => {
  let controller: EntityUserController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [EntityUserController],
    }).compile();

    controller = module.get<EntityUserController>(EntityUserController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
