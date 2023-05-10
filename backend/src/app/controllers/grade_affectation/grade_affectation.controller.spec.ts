import { Test, TestingModule } from '@nestjs/testing';
import { GradeAffectationController } from './grade_affectation.controller';

describe('GradeAffectationController', () => {
  let controller: GradeAffectationController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GradeAffectationController],
    }).compile();

    controller = module.get<GradeAffectationController>(GradeAffectationController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
