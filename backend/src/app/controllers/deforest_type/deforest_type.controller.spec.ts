import { Test, TestingModule } from '@nestjs/testing';
import { DeforestTypeController } from './deforest_type.controller';

describe('DeforestTypeController', () => {
  let controller: DeforestTypeController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [DeforestTypeController],
    }).compile();

    controller = module.get<DeforestTypeController>(DeforestTypeController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
