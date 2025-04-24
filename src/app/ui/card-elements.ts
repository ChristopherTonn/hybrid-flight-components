import { Injector } from '@angular/core';
import { createCustomElement } from '@angular/elements';
import { CardComponent } from './card.component';

export function defineCardElement(injector: Injector) {
  const el = createCustomElement(CardComponent, { injector });
  customElements.define('app-card', el);
}
