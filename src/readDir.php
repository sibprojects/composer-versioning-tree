<?php

namespace Src;

trait readDir {

  /**
   * @param $path
   */
	public static function readDir($src)
	{
		$result = [];

		$dir = opendir($src);
		while(false !== ( $file = readdir($dir)) ) {

			if (( $file != '.' ) && ( $file != '..' )) {

				if ( !is_dir($src . '/' . $file) ) {

					if ($file == 'composer.json' && file_exists($src . '/composer.lock')) {
						$result[] = $src . '/' . $file;
					}
				} else {

					$results2 = self::readDir($src . '/' . $file);
					foreach($results2 as $file){
						$result[] = $file;
					}
	      }
    	}
		}
		closedir($dir);

		return $result;
	}

}