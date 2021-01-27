<?php

require_once 'PHPUnit/Autoload.php';

class Tests extends PHPUnit_Framework_TestCase {

	function testGitVersion() {

		require_once('src/_autoload.php');
		$composerTree = new Src\ComposerTree();
		$version = $composerTree->readGit('https://github.com/dnoegel/php-xdg-base-dir.git');

		$this->assertTrue($version);
	}

}
