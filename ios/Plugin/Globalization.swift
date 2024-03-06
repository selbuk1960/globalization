import Foundation

class Globalization {
    func formatDateWithPreferredFormat(date: String) -> String {
        let formatter = DateFormatter()
        formatter.formatterBehavior = .default
        formatter.dateStyle = .medium
        formatter.timeStyle = .none

        let stringToDate = formatter.date(from: date)
        return formatter.string(from: stringToDate ?? Date())
    }
    func formatMoneyWithPreferredCurrency(value: Double, decimals: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = decimals
        return formatter.string(from: NSNumber(value: value)) ?? ""
    }
}
