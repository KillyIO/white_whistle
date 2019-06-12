import { homedir } from 'os';
import { join } from 'path';
import { ensureDir } from 'fs-extra';

export default class Utils {

  /**
   * create_ww_dir
   */
  // public create_ww_dir() {
  //   const dir = join(this.get_user_homepath(), 'white-whistle');
  //   ensureDir(dir)
  //   .then(() => {

  //   });
  // }

  /**
   * open_ww_dir
   */
  // public open_ww_dir() {

  // }
  /**
   * get_user_homepath
   */
  private get_user_homepath(): string {
    return homedir();
  }
}
