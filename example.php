<?php

require_once "src/_autoload.php";

$useApi = false;
$composerTree = new Src\ComposerTree($useApi);

$rows = $composerTree->make(realpath(dirname(__FILE__)).'/examples/');
//print_r($rows);die;

// write to db
require_once "bootstrap.php";

foreach($rows as $row){
	if(!$fileRow = $entityManager->getRepository('File')->findOneByProject($row['name'])){
		$file = new File();
		$file->setProject($row['name']);
		$file->setFilename($row['file']);
		$entityManager->persist($file);
		$entityManager->flush();
		$fileRow = $entityManager->getRepository('File')->findOneByProject($row['name']);
	}
	$tree = new Tree();
	$tree->setFileId($fileRow->getId());
	$entityManager->persist($tree);
	$entityManager->flush();

	saveRows($tree->getId(), $row['trees'], 0);
}

function saveRows($tree_id, $rows, $parent_id){

	global $entityManager;

	foreach($rows as $row){
		$treeRow = new TreeRow();
		$treeRow->setTreeId($tree_id);
		$treeRow->setParentId($parent_id);
		$treeRow->setName($row['name']);
		$treeRow->setVersion($row['version']);
		$treeRow->setLatest($row['latest']);
		$entityManager->persist($treeRow);
		$entityManager->flush();
		if(count($row['subs'])){
			saveRows($tree_id, $row['subs'], $treeRow->getId());
		}
	}
}

header('Content-Type: application/json');

echo json_encode($rows);
