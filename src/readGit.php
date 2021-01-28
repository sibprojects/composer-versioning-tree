<?php

namespace Src;

trait readGit {

  /**
   * @param $source
   */
	public function readGit($useApi, $source)
	{
		if($useApi){
			return self::readGitApi($source);
		} else {
			return self::readGitRaw($source);
		}
	}

  /**
   * @param $source
   */
	public function readGitApi($source)
	{
		// prepare api link of tags
		$source = str_replace(['.git','github.com/'], ['/tags','api.github.com/repos/'], $source);

		$curl = curl_init($source);
		$headers = array(
    	'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0',
	    'Accept: application/json',
  	  'Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4',
    	'Accept-Charset: windows-1251,utf-8;q=0.7,*;q=0.7'
		);
		curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_TIMEOUT_MS, 5000);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
		$response = curl_exec($curl);
		curl_close($curl);

		$response = json_decode($response, true);
		if(isset($version[0]) && isset($version[0]['name'])){
			return $version[0]['name'];
		} else {
			return 'Not found!';
		}
	}

  /**
   * @param $source
   */
	public function readGitRaw($source)
	{
		// prepare api link of tags
		$source = str_replace('.git', '/releases/latest', $source);
		$curl = curl_init($source);
		curl_setopt($curl, CURLOPT_HEADER, 1);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 0);
		curl_setopt($curl, CURLOPT_TIMEOUT_MS, 5000);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
		$result = curl_exec($curl);
		$headers = explode("\r\n", $result);
		if(isset($headers[0]) && strstr($headers[0],'302')){
			foreach($headers as $header){
				if(strstr($header,'ocation')){
					$version = explode('ocation: ', $header)[1];
					$version = explode('/',$version);
					$version = $version[count($version)-1];
					if($version=='releases'){
						$url = explode('ocation: ', $header)[1];
						$curl_s = curl_init($url);
						curl_setopt($curl_s, CURLOPT_HEADER, 0);
						curl_setopt($curl_s, CURLOPT_RETURNTRANSFER, 1);
						curl_setopt($curl_s, CURLOPT_FOLLOWLOCATION, 0);
						curl_setopt($curl_s, CURLOPT_SSL_VERIFYPEER, false);
						$result = curl_exec($curl_s);
						$repo = explode('github.com/',$url)[1];
						preg_match('/<a href="(.*'.str_replace('/','\/',$repo).'.*)"/miU', $result, $out);
						if(isset($out[1])){
							$version = explode('/',$out[1]);
							$version = $version[count($version)-1];
							return $version;
						} else {
							return 'Not found!';
						}
					} else {
						return $version;
					}
				}
			}
		} else {
			return 'Not found!';
		}
	}

}