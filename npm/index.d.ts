declare module '@apiverve/gibberishdetector' {
  export interface gibberishdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface gibberishdetectorResponse {
    status: string;
    error: string | null;
    data: GibberishDetectorData;
    code?: number;
  }


  interface GibberishDetectorData {
      isGibberish: boolean;
      score:       number;
      confidence:  number;
      text:        string;
      textLength:  number;
  }

  export default class gibberishdetectorWrapper {
    constructor(options: gibberishdetectorOptions);

    execute(callback: (error: any, data: gibberishdetectorResponse | null) => void): Promise<gibberishdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: gibberishdetectorResponse | null) => void): Promise<gibberishdetectorResponse>;
    execute(query?: Record<string, any>): Promise<gibberishdetectorResponse>;
  }
}
