import Entity from './entity';

interface Genesis {
  age_?: number;
  creation_?: unknown;

  getAge(): number;
  setAge(age: number): void;
  getCreation(): unknown;
  setCreation(creation: unknown): void;
}

// interface IWorldPhysics {
//   earth_like: boolean;
//   earth_like_desc: unknown;
//   multi_sun: boolean;
//   sun_nbr: number;
//   sun_names: unknown[];
//   sky_day_desc: unknown;
//   sky_night_desc: unknown;
//   season_nbr: number;
//   season_names: unknown[];
// }

// interface IWorld {
//   name: string;
// }

export default class World implements Entity {
  private ID_: number;
  private NAME_: unknown;

  constructor(ID: number, name: unknown) {
    this.ID_ = ID;
    this.NAME_ = name;
  }

  public getID(): number {
    return this.ID_;
  }

  public setID(ID: number): void {
    this.ID_ = ID;
  }

  public getName(): unknown {
    return this.NAME_;
  }

  public setName(name: unknown): void {
    this.NAME_ = name;
  }
}
