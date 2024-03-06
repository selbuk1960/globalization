export interface GlobalizationPlugin {
    getDateFormat(): Promise<{
        value: string;
    }>;
}
