import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment} from '../../interface/config/environment';
@Injectable({
  providedIn: 'root'
})
export class BackendService {
private  URLbackend = environment.url
  constructor( private  http: HttpClient) { }

  getData():Observable<any> {
    return this.http.get(`${this.URLbackend}/user/todos`);
  }
}

