import { WebPlugin } from '@capacitor/core';
import type { GlobalizationPlugin } from './definitions';
export declare class GlobalizationWeb extends WebPlugin implements GlobalizationPlugin {
    getDateFormat(): Promise<{
        value: string;
    }>;
}
