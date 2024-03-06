import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(GlobalizationPlugin)
public class GlobalizationPlugin: CAPPlugin {
    private let implementation = Globalization()

    /**
      * @name formatDateWithPreferredFormat
      * @description This method returns the date format that the user has set in the system settings.
      * @param call A Capacitor call object
      * @param date A string with the date to format
      * @return A string with the date format
      * @Example
      * ```ts
      * import { Plugins } from '@capacitor/core';
      * const { GlobalizationPlugin } = Plugins;
      * const result = await GlobalizationPlugin.formatDateWithPreferredFormat({ date: '2021-01-01' });
      */
    @objc func formatDateWithPreferredFormat(_ call: CAPPluginCall) {
        let date = call.getString("date") ?? ""
        let formatter = DateFormatter()
        formatter.formatterBehavior = .default
        formatter.dateStyle = .medium
        formatter.timeStyle = .none

        let stringToDate = formatter.date(from: date)
        let formattedDate = formatter.string(from: stringToDate ?? Date())
        call.resolve(["value": formattedDate])
    }

    /**
      * @name formatMoneyWithPreferredCurrency
      * @description This method returns the currency format that the user has set in the system settings.
      * @param call A Capacitor call object
      * @param value A number with the value to format
      * @param decimals A number with the number of decimals to show
      * @return A string with the currency format
      * @Example
      * ```ts
      * import { Plugins } from '@capacitor/core';
      * const { GlobalizationPlugin } = Plugins;
      * const result = await GlobalizationPlugin.formatMoneyWithPreferredCurrency({ value: 1000.30 });
      * Example output: $1,000.30
      */
    @objc func formatMoneyWithPreferredCurrency(_ call: CAPPluginCall) {
        let value = call.getDouble("value") ?? 0
        let decimals = call.getInt("decimals") ?? 0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = decimals
        let formattedValue = formatter.string(from: NSNumber(value: value)) ?? ""
        call.resolve(["value": formattedValue])
    }
}
