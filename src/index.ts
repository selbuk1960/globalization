import { registerPlugin } from '@capacitor/core';
import type { GlobalizationPlugin } from './definitions';

const Globalization = registerPlugin<GlobalizationPlugin>('Globalization', {
  web: () => import('./web').then(m => new m.GlobalizationWeb()),
});

export * from './definitions';
export { Globalization };
