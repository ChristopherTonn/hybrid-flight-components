import 'document-register-element'; // Polyfill
import { enableProdMode, importProvidersFrom, Injector } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { defineCardElement } from './app/ui/card-elements';
import { provideZoneChangeDetection } from '@angular/core';
import { environment } from './environments/environment';

if (environment.production) {
  enableProdMode();
}

const moduleRef = importProvidersFrom([
  BrowserModule,
  provideZoneChangeDetection({ eventCoalescing: true }),
]);
const injector: Injector = moduleRef.injector;

defineCardElement(injector);
