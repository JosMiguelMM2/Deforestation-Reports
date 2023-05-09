import { Test, TestingModule } from '@nestjs/testing';
import { SuperpostService } from './superpost.service';

describe('SuperpostService', () => {
  let service: SuperpostService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SuperpostService],
    }).compile();

    service = module.get<SuperpostService>(SuperpostService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
