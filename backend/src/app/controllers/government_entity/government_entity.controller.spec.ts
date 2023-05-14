import { Test, TestingModule } from '@nestjs/testing';
import { GovernmentEntityController } from './government_entity.controller';

describe('GovernmentEntityController', () => {
  let controller: GovernmentEntityController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GovernmentEntityController],
    }).compile();

    controller = module.get<GovernmentEntityController>(GovernmentEntityController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
