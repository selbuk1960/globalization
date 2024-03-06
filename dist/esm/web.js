import { WebPlugin } from '@capacitor/core';
export class GlobalizationWeb extends WebPlugin {
    async getDateFormat() {
        return { value: 'MM/dd/yyyy' };
    }
}
//# sourceMappingURL=web.js.map