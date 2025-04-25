import { createCustomElement } from '@angular/elements';
import { bootstrapApplication } from '@angular/platform-browser';
import { Component } from '../../../src/app/ui/card/card.component';

bootstrapApplication(Component).then(appRef => {
  const el = createCustomElement(Component, { injector: appRef.injector });
  customElements.define('app-card', el);
});
