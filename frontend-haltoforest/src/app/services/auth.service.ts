// import { Injectable } from '@angular/core';
// import { Router } from '@angular/router';

// @Injectable({
//   providedIn: 'root'
// })
// export class AuthService {
//   private isLoggedIn = false;
//   private isAdmin = false;

//   constructor(private router: Router) { }

//   login(username: string, password: string): void {
//     // Aquí iría la lógica de autenticación, por ejemplo, una llamada a una API
//     // para verificar las credenciales del usuario.

//     // Supongamos que el usuario 'admin' es un administrador y cualquier otro usuario es normal.
//     if (username === 'admin' && password === 'admin') {
//       this.isAdmin = true;
//     }

//     this.isLoggedIn = true;

//     // Redirigir al componente correspondiente según el tipo de usuario
//     if (this.isAdmin) {
//       this.router.navigate(['/admin']);
//     } else {
//       this.router.navigate(['/user']);
//     }
//   }

//   logout(): void {
//     // Aquí iría la lógica para cerrar sesión, como borrar las credenciales del usuario, etc.
//     this.isLoggedIn = false;
//     this.isAdmin = false;
//     this.router.navigate(['/login']);
//   }

//   // isLoggedIn(): boolean {
//   //   return this.isLoggedIn;
//   // }

//   isAdminUser(): boolean {
//     return this.isAdmin;
//   }
// }
