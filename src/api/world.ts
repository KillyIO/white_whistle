interface IWorldGenesis {
  age: number;
  creation: unknown;
}

interface IWorldPhysics {
  earth_like: boolean;
  earth_like_desc: unknown;
  multi_sun: boolean;
  sun_nbr: number;
  sun_names: unknown[];
  sky_day_desc: unknown;
  sky_night_desc: unknown;
  season_nbr: number;
  season_names: unknown[];
}

interface IWorld {
  name: string;
}

// export default class World {
//   constructor(parameters: []) {
//   }
// }
