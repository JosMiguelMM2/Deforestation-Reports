import { Component, OnInit } from '@angular/core';
import { NgModule } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { Routes, RouterModule, Router } from '@angular/router';
import { User } from 'src/app/interfaces/user.interface';
import { UserSerice } from 'src/app/services/user.service';
import { HttpErrorResponse } from '@angular/common/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  email: string = '';
  password: string = '';

  constructor(
    private toastr: ToastrService,
    private _userService: UserSerice,
    private router: Router
  ) {

  }

  ngOnInit(): void { }

  login() {
    if (this.email == '' || this.password == '') {
      this.toastr.error('Todos los campos son obligatorios', 'Error');
      return;
    }

    const user: User = {
      email: this.email,
      password: this.password
    }

    this._userService.login(user).subscribe({
      next: (token) => {
        this.router.navigate(['/login-user'])
        localStorage.setItem('token', token)
      },
      error: (e: HttpErrorResponse) => {
        this.msjError(e);
      }
    })
  }

  msjError(e: HttpErrorResponse) {
    if (e.error.msg) {
      this.toastr.error(e.error.msg, 'Error');
    } else {
      this.toastr.error('Ocurrio un error, comuniquese con el administrador', 'Error')
    }
  }
}
