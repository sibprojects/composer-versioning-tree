<?php

// bootstrap.php
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

require_once "doctrine/vendor/autoload.php";

$isDevMode = true;
$proxyDir = null;
$cache = null;
$useSimpleAnnotationReader = false;
$config = Setup::createAnnotationMetadataConfiguration(array(__DIR__."/doctrine/entity"), $isDevMode, $proxyDir, $cache, $useSimpleAnnotationReader);

// the connection configuration
$dbParams = array(
    'driver'   => 'pdo_mysql',
    'user'     => 'root',
    'password' => '',
    'dbname'   => 'composer-versioning-tree',
);

$entityManager = EntityManager::create($dbParams, $config);
