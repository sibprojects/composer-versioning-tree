<?php

require_once('src/_autoload.php');

$composerTree = new Src\ComposerTree();

$tree = $composerTree->make(realpath(dirname(__FILE__)).'/examples/');

header('Content-Type: application/json');

echo json_encode($tree);
