import { Column, CreateDateColumn, Entity, PrimaryGeneratedColumn } from 'typeorm'

@Entity()
export class User {
  @PrimaryGeneratedColumn('uuid')
  id:string;

  @Column()
  name:string;

  @Column({unique: true})
  email:string;

  @Column()
  password:string;

  @Column({type: 'boolean', default: false})
  active:boolean;

  @Column({type: 'uuid', unique: true, name: 'activation_token'})
  activationToken:string;

  @Column({type: 'uuid', unique: true, name: 'reset_password_token', nullable: true})
  resetPasswordToken: string;

  @CreateDateColumn({name: 'created_on'})
  createdOn:Date;
}
