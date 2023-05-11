import { Test, TestingModule } from '@nestjs/testing';
import { DeforestTypeService } from './deforest_type.service';

describe('DeforestTypeService', () => {
  let service: DeforestTypeService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [DeforestTypeService],
    }).compile();

    service = module.get<DeforestTypeService>(DeforestTypeService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
