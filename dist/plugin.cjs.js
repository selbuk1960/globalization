'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var core = require('@capacitor/core');

const Globalization = core.registerPlugin('Globalization', {
    web: () => Promise.resolve().then(function () { return web; }).then(m => new m.GlobalizationWeb()),
});

class GlobalizationWeb extends core.WebPlugin {
    async getDateFormat() {
        return { value: 'MM/dd/yyyy' };
    }
}

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    GlobalizationWeb: GlobalizationWeb
});

exports.Globalization = Globalization;
//# sourceMappingURL=plugin.cjs.js.map
