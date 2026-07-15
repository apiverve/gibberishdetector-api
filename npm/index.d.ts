declare module '@apiverve/gibberishdetector' {
  export interface gibberishdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface gibberishdetectorResponse {
    status: string;
    error: string | null;
    data: GibberishDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface GibberishDetectorData {
      isGibberish:     boolean | null;
      score:           number | null;
      confidence:      number | null;
      confidenceLevel: null | string;
      text:            null | string;
      textLength:      number | null;
      wordCount:       number | null;
  }

  export default class gibberishdetectorWrapper {
    constructor(options: gibberishdetectorOptions);

    execute(callback: (error: any, data: gibberishdetectorResponse | null) => void): Promise<gibberishdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: gibberishdetectorResponse | null) => void): Promise<gibberishdetectorResponse>;
    execute(query?: Record<string, any>): Promise<gibberishdetectorResponse>;
  }
}
