import { Entity, FullName, Quote, AffiliatedRegion } from './entity';

interface ICharacter extends Entity, FullName {
  Quotes: Quote[];
}

export class Character {
  public static fromJSON(json: string): Character {
    const jsonObject = JSON.parse(json);
    return new Character(jsonObject);
  }

  private Id!: number;
  private Name?: string;
  private ImageUrl?: string;
  private Created!: number;

  private Region?: AffiliatedRegion;

  private Firstname!: string;
  private Middlename?: string;
  private Lastname?: string;

  private Quotes!: Quote[];

  constructor(data?: Partial<ICharacter>) {
    Object.assign(this, data);
    this.Quotes = new Array<Quote>();
  }

  public getId(): number {
    return this.Id;
  }

  public setId(id: number): void {
    this.Id = id;
  }

  public getName(): string {
    return this.Name as string;
  }

  public setName(name: string): void {
    this.Name = name;
  }

  public getImageUrl(): string {
    return this.ImageUrl as string;
  }

  public setImageUrl(url: string): void {
    this.ImageUrl = url;
  }

  public getCreated(): number {
    return this.Created;
  }

  public setCreated(date: number): void {
    this.Created = date;
  }

  public getAffiliatedRegion(): AffiliatedRegion {
    return this.Region as AffiliatedRegion;
  }

  public setAffiliatedRegion(region: AffiliatedRegion): void {
    this.Region = region;
  }

  public getFirstname(): string {
    return this.Firstname as string;
  }

  public setFirstname(firstname: string): void {
    this.Firstname = firstname;
  }

  public getMiddlename(): string {
    return this.Middlename as string;
  }

  public setMiddlename(middlename: string): void {
    this.Middlename = middlename;
  }

  public getLastname(): string {
    return this.Lastname as string;
  }

  public setLastname(lastname: string): void {
    this.Lastname = lastname;
  }

  public getQuotes(): Quote[] {
    return this.Quotes as Quote[];
  }

  public setQuotes(quote: Quote): void {
    this.Quotes.push(quote);
  }
}
