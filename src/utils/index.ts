import { homedir } from 'os';
import { join } from 'path';
import { ensureDir } from 'fs-extra';

export default class Utils {

  /**
   * getWhiteWhistlePath
   */
  public getWhiteWhistlePath(): string {
    return join(this.getUserHomePath(), '.white-whistle');
  }

  /**
   * getWorldsSubfolder
   */
  public getWorldsSubfolder() {
    return join(this.getWhiteWhistlePath(), 'worlds');
  }

  /**
   * getLocationsSubfolder
   */
  public getLocationsSubfolder() {
    return join(this.getWhiteWhistlePath(), 'locations');
  }

  /**
   * getCharactersSubfolder
   */
  public getCharactersSubfolder() {
    return join(this.getWhiteWhistlePath(), 'characters');
  }

  /**
   * getArtifactsSubfolder
   */
  public getArtifactsSubfolder() {
    return join(this.getWhiteWhistlePath(), 'artifacts');
  }

  /**
   * getUserHomePath
   */
  public getUserHomePath(): string {
    return homedir();
  }
}
