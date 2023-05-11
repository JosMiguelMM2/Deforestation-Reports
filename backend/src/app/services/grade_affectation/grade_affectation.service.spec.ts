import { Test, TestingModule } from '@nestjs/testing';
import { GradeAffectationService } from './grade_affectation.service';

describe('GradeAffectationService', () => {
  let service: GradeAffectationService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [GradeAffectationService],
    }).compile();

    service = module.get<GradeAffectationService>(GradeAffectationService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
