import { Test, TestingModule } from '@nestjs/testing';
import { FrecuencyController } from './frecuency.controller';

describe('FrecuencyController', () => {
  let controller: FrecuencyController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FrecuencyController],
    }).compile();

    controller = module.get<FrecuencyController>(FrecuencyController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
