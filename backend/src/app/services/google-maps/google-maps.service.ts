import { Injectable } from '@nestjs/common';
import { Client, GeocodeResponse } from '@googlemaps/google-maps-services-js';

@Injectable()
export class GoogleMapsService {
  private client: Client;

  constructor() {
    this.client = new Client({});
  }

  async getCoordinatesFromAddress(address: string): Promise<{ lat: number; lng: number }> {
    const response: GeocodeResponse = await this.client.geocode({
      params: {
        address,
        key: 'AIzaSyBMImNUsVNZW3oJMdaOUg8QQPb0ZUcPi_g', // Reemplaza con tu propia API key de Google Maps
      },
    });

    const { lat, lng } = response.data.results[0].geometry.location;
    return { lat, lng };
  }

  async getCoordinatesFromCurrentLocation(): Promise<{ lat: number; lng: number }> {
    if (navigator.geolocation) {
      return new Promise((resolve, reject) => {
        navigator.geolocation.getCurrentPosition(         // Utiliza la api de geolocation para obtener la ubicación en tiempo real del usuario
          (position) => {
            const { latitude, longitude } = position.coords;
            resolve({ lat: latitude, lng: longitude });
          },
          (error) => {
            reject(error);
          }
        );
      });
    } else {
      throw new Error('Geolocation is not supported by this browser.');
    }
  }
}
