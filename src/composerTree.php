<?php

namespace Src;

class composerTree {

	use ReadDir, ReadGit;

  /**
   * @param $startPath
   */
	public function make($startPath)
	{
		$files = $this->readDir($startPath);

		$projects = [];

		foreach($files as $file){

			$dataProject = json_decode(file_get_contents($file), true);

			$project = [
											'name' => $dataProject['name'],
											'file' => $file,
											'packages' => []
									];
			if(isset($dataProject['require'])){
				foreach($dataProject['require'] as $name => $version){
					$project['packages'][$name] = [];
				}
			}
			if(isset($dataProject['require-dev'])){
				foreach($dataProject['require-dev'] as $name => $version){
					$project['packages'][$name] = [];
				}
			}

			$data = json_decode(file_get_contents(str_replace('.json','.lock',$file)), true);

			$packages = [];
			if(isset($data['packages'])){
				foreach($data['packages'] as $package){
					$packages[$package['name']] = $package;
				}
			}
			if(isset($data['packages-dev'])){
				foreach($data['packages-dev'] as $package){
					$packages[$package['name']] = $package;
				}
			}
			foreach($packages as $name => $package){
				$package['subs'] = [];
				if(isset($package['require'])){
					foreach($package['require'] as $requireName => $tmp){
						if(isset($packages[ $requireName ])){
							$package['subs'][] = $requireName;
						}
					}
				}
				if(isset($package['require-dev'])){
					foreach($package['require-dev'] as $requireName => $tmp){
						if(isset($packages[ $requireName ])){
							$package['subs'][] = $requireName;
						}
					}
				}

				$package['latest'] = $this->readGit($package['source']['url']);

				$packages[$name] = $package;
			}

			$trees = [];
			foreach($project['packages'] as $name => $tmp){

				if(!isset($packages[$name])) continue;

				$trees[] = [
										'name' => $name,
										'version' => $packages[$name]['version'],
										'latest' => $packages[$name]['latest'],
										'subs' => count($packages[$name]['subs']) ? $this->subtree($packages[$name]['subs'], $packages, $project['packages']) : [],
									];
			}

			$project['trees'] = $trees;
			unset($project['packages']);
			$projects[] = $project;
		}

		return $projects;
	}

	private function subtree($subs, $packages, &$usedNames)
	{
		$trees = [];
		foreach($subs as $name){

			if(!isset($packages[$name]) || isset($usedNames[$name])) continue;

			$package = $packages[$name];

			$usedNames[$name] = 1;

			$trees[] = [
									'name' => $name,
									'version' => $package['version'],
									'latest' => $package['latest'],
									'subs' => count($package['subs']) ? $this->subtree($package['subs'], $packages, $usedNames) : [],
								];
		}

		

		return $trees;
	}

}