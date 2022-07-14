<?php

$mc = new \Memcache();
$mc->addServer("memcached", 11211);
var_dump($mc->get('key_string'));
var_dump($mc->get('key_bool'));
