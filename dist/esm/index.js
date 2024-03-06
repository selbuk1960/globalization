import { registerPlugin } from '@capacitor/core';
const Globalization = registerPlugin('Globalization', {
    web: () => import('./web').then(m => new m.GlobalizationWeb()),
});
export * from './definitions';
export { Globalization };
//# sourceMappingURL=index.js.map