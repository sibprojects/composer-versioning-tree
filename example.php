<?php

require_once('src/_autoload.php');

$useApi = false;
$composerTree = new Src\ComposerTree($useApi);

$tree = $composerTree->make(realpath(dirname(__FILE__)).'/examples/');

header('Content-Type: application/json');

echo json_encode($tree);
