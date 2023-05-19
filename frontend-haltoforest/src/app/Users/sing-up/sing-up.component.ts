import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { User } from 'src/app/interfaces/user.interface';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-sing-up',
  templateUrl: './sing-up.component.html',
  styleUrls: ['./sing-up.component.css']
})
export class SingUpComponent implements OnInit {
  // Component properties
  email: string = '';
  password: string = '';
  confirmPassword: string = '';
  name: string = '';
  lastName: string = '';
  city: string = '';
  address: string = '';
  phone: string = '';
  gender: string = '';

  constructor(
    private toastr: ToastrService,
    private _userService: UserService, // Replace 'UserSerice' with your actual UserService
    private router: Router // Replace 'Router' with your actual Router
  ) { }

  ngOnInit(): void {
    // Perform any initialization logic here if needed
  }

  addUser() {
    // Validation checks
    if (this.email === '' || this.password === '' || this.confirmPassword === '') {
      this.toastr.error('Todos los campos son obligatorios', 'Error');
      return;
    }

    if (this.password !== this.confirmPassword) {
      this.toastr.error('Las contraseñas ingresadas son distintas', 'Error');
      return;
    }

    // Creating a user object
    const user: User = {
      email: this.email,
      password: this.password,
      name: this.name, // Add the remaining properties based on your User interface
      lastName: this.lastName,
      city: this.city,
      address: this.address,
      phone: this.phone,
      gender: this.gender
    };

    // Calling the user service to register the user
    this._userService.signIn(user).subscribe(data => {
      this.toastr.success('El usuario fue registrado', 'Usuario registrado');
      this.router.navigate(['/']); // Replace '/' with your desired route after successful registration
    });
  }
}
