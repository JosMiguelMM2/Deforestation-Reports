import { Column, CreateDateColumn, Entity, PrimaryGeneratedColumn } from 'typeorm'

@Entity()
export class User {
  // @PrimaryGeneratedColumn('uuid')
  // id: string;

  @PrimaryGeneratedColumn('increment')
  id: number;

  @Column()
  name: string;

  @Column({ name: 'last_name' })
  lastName: string;

  @Column()
  city: string;

  @Column()
  address: string;

  @Column()
  phone: string;

  @Column()
  gender: string;

  @Column({ unique: true })
  email: string;

  @Column()
  password: string;

  // @Column()
  // userType: string;

  @Column({ type: 'boolean', default: false })
  active: boolean;

  @Column({ type: 'uuid', unique: true, name: 'activation_token' })
  activationToken: string;

  @Column({ type: 'uuid', unique: true, name: 'reset_password_token', nullable: true })
  resetPasswordToken: string;

  @CreateDateColumn({ name: 'created_on' })
  createdOn: Date;
}
