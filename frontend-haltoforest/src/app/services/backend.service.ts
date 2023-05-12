import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class BackendService {
private  URLbackend = 'http://localhost:3000';
  constructor( private  http: HttpClient) { }

  getData(): Observable<any> {
    const peticion='http://localhost:3000';
    return this.http.get(`http://localhost:3000/user/todos`);
  }
}

