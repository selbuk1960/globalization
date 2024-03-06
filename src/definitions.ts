export interface GlobalizationPlugin {
  formatDateWithPreferredFormat(date: string): Promise<string>;
  formatMoneyWithPreferredCurrency(value: number, decimals: number): Promise<string>;
}
