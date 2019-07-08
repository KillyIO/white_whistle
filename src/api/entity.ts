export interface Entity {
  Id: number;
  Name?: string;
  ImageUrl?: string;
  Created: number;
}

export interface FullName {
  Firstname: string;
  Middlename?: string;
  Lastname?: string;
}

export interface Quote {
  Sentence?: string;
  Author?: string;
}

export interface AffiliatedWorld {
  Id?: number;
  Name?: string;
}

export interface AffiliatedRegion {
  Id?: number;
  Name?: string;
}
