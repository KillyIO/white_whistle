/* tslint:disable:no-console */

import { homedir } from 'os';
import { join } from 'path';
import {
  outputJsonSync,
} from 'fs-extra';

import { World, Region, Character } from '@/api';

export default class Utils {

  /**
   * getUserHomePath
   */
  public getUserHomePath(): string {
    return homedir();
  }

  /**
   * getWhiteWhistlePath
   */
  public getWhiteWhistlePath(): string {
    return join(this.getUserHomePath(), '.white-whistle');
  }

  /**
   * getConfigFilePath
   */
  public getConfigFilePath() {
    return join(this.getWhiteWhistlePath(), 'config.json');
  }

  /**
   * getWorldsSubfolderPath
   */
  public getWorldsSubfolderPath() {
    return join(this.getWhiteWhistlePath(), 'worlds');
  }

  /**
   * getLocationsSubfolderPath
   */
  public getRegionsSubfolderPath() {
    return join(this.getWhiteWhistlePath(), 'regions');
  }

  /**
   * getCharactersSubfolderPath
   */
  public getCharactersSubfolderPath() {
    return join(this.getWhiteWhistlePath(), 'characters');
  }

  /**
   * getArtifactsSubfolderPath
   */
  public getArtifactsSubfolderPath() {
    return join(this.getWhiteWhistlePath(), 'artifacts');
  }

  /**
   * convertName
   */
  public convertName(fullName: string|string[]): string {
    if (typeof fullName === 'string') {
      return fullName.toLowerCase().replace(/ /g, '_');
    } else {
      return fullName.join(' ');
    }
  }

  /**
   * saveWorld
   */
  public saveWorld(filePath: string, world: World): void {
    console.log('save world');
    outputJsonSync(filePath, world);
  }

  /**
   * saveRegion
   */
  public saveRegion(filePath: string, region: Region): void {
    console.log('save region');
    outputJsonSync(filePath, region);
  }

  /**
   * saveCharacter
   */
  public saveCharacter(filePath: string, character: Character): void {
    console.log('save character');
    outputJsonSync(filePath, character);
  }
}
