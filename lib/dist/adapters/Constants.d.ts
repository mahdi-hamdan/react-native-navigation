export interface NavigationConstants {
    statusBarHeight: number;
    backButtonId: string;
    topBarHeight: number;
    bottomTabsHeight: number;
    nonceString: string;
}
export declare class Constants {
    static get(): Promise<NavigationConstants>;
    readonly statusBarHeight: number;
    readonly nonceString: string;
    readonly backButtonId: string;
    readonly topBarHeight: number;
    readonly bottomTabsHeight: number;
    private constructor();
}
