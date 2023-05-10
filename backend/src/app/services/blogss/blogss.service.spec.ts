import { Test, TestingModule } from '@nestjs/testing';
import { BlogssService } from './blogss.service';

describe('BlogssService', () => {
  let service: BlogssService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [BlogssService],
    }).compile();

    service = module.get<BlogssService>(BlogssService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
