import Entity from './entity';

interface Genesis {
  Age?: number;
  Creation?: string;
}

interface IWorld extends Entity, Genesis {
}

export class World {
  public static fromJSON(json: string): World {
    const jsonObject = JSON.parse(json);
    return new World(jsonObject);
  }

  private Id!: number;
  private Name?: string;
  private ImageUrl?: string;
  private Created!: number;

  private Age?: number;
  private Creation?: string;

  constructor(data?: Partial<IWorld>) {
    Object.assign(this, data);
  }

  public getId(): number {
    return this.Id;
  }

  public setId(id: number): void {
    this.Id = id;
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

  public getName(): string {
    return this.Name as string;
  }

  public setName(name: string): void {
    this.Name = name;
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
