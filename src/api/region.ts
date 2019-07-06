import { Entity, AffiliatedWorld } from './entity';

interface Genesis {
  Age?: number;
  Creation?: string;
}

interface IRegion extends Entity, Genesis {
}

export class Region {
  public static fromJSON(json: string): Region {
    const jsonObject = JSON.parse(json);
    return new Region(jsonObject);
  }

  private Id!: number;
  private Name?: string;
  private ImageUrl?: string;
  private Created!: number;

  private World?: AffiliatedWorld;

  private Age?: number;
  private Creation?: string;

  constructor(data?: Partial<IRegion>) {
    Object.assign(this, data);
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

  public getAffiliatedWorld(): AffiliatedWorld {
    return this.World as AffiliatedWorld;
  }

  public setAffiliatedWorld(world: AffiliatedWorld): void {
    this.World = world;
  }

  public getAge(): number {
    return this.Age as number;
  }

  public setAge(age: number): void {
    this.Age = age;
  }

  public getCreation(): string {
    return this.Creation as string;
  }

  public setCreation(creation: string): void {
    this.Creation = creation;
  }
}
