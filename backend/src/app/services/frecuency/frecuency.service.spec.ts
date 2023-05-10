import { Test, TestingModule } from '@nestjs/testing';
import { FrecuencyService } from './frecuency.service';

describe('FrecuencyService', () => {
  let service: FrecuencyService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [FrecuencyService],
    }).compile();

    service = module.get<FrecuencyService>(FrecuencyService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
