import { WebPlugin } from '@capacitor/core';
import type { GlobalizationPlugin } from './definitions';

export class GlobalizationWeb extends WebPlugin implements GlobalizationPlugin {
  async formatDateWithPreferredFormat(date: string): Promise<string> {
    return date;
  }
  async formatMoneyWithPreferredCurrency(value: number, decimals: number): Promise<string> {
    return value.toFixed(decimals);
  }
}
