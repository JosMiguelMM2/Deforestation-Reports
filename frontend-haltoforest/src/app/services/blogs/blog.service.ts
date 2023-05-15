import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

import { environment } from '../../../interface/config/environment';

@Injectable({
  providedIn: 'root'
})
export class BlogService {
  private  URLbackend =environment.url;
  constructor(private  http: HttpClient) { }

  getblogs():Observable<any>{
    return this.http.get(`${this.URLbackend}/blog`);
  }
}
