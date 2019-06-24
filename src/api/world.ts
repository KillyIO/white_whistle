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

  public getImageUrl(): string | unknown {
    return this.ImageUrl;
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

  public getName(): string | unknown {
    return this.Name;
  }

  public setName(name: string): void {
    this.Name = name;
  }

  public getAge(): number | unknown {
    return this.Age;
  }

  public setAge(age: number) {
    this.Age = age;
  }

  public getCreation(): string | unknown {
    return this.Creation;
  }

  public setCreation(creation: string) {
    this.Creation = creation;
  }
}
