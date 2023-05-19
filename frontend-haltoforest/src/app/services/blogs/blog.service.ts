import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

import { environment } from '../../../interface/config/environment';

@Injectable({
  providedIn: 'root'
})
export class BlogService {
  private URLbackend = environment.url;
  constructor(private http: HttpClient) { }

  getblogs(): Observable<any> {
    // const token = localStorage.getItem('token')
    // const headers = new HttpHeaders().set('Authorization', `Bearer ${token}`)
    // return this.http.get(`${this.URLbackend}/blog`, { headers: headers });
    return this.http.get(`${this.URLbackend}/blog`);
  }
}
