import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class BlogService {
  private  URLbackend = 'http://localhost:3000';
  constructor(private  http: HttpClient) { }

  getblogs():Observable<any>{
    return this.http.get(`${this.URLbackend}/blog`);
  }
}
