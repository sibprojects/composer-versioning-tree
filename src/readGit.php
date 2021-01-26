<?php

namespace Src;

trait readGit {

  /**
   * @param $source
   */
	public function readGit($source)
	{

		// prepare api link of tags
		$source = str_replace(['.git','github.com/'], ['/tags','api.github.com/repos/'], $source);

		$ch = curl_init($source);
		$headers = array(
    	'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0',
	    'Accept: application/json',
  	  'Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4',
    	'Accept-Charset: windows-1251,utf-8;q=0.7,*;q=0.7'
		);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_TIMEOUT_MS, 50000);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$response = @curl_exec($ch);
		curl_close($ch);

		return json_decode($response, true);
	}

}