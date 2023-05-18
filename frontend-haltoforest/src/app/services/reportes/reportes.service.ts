import {Injectable} from '@angular/core';
import {environment} from '../../../interface/config/environment';
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class ReportesService {
  private ulrr = environment.url;

  constructor(private http: HttpClient) {
  }

  getreports():Observable<any> {
    return this.http.get(`${this.ulrr}/report`);
  }
}
