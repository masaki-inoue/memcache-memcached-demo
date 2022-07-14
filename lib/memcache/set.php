<?php

$mc = new \Memcache();
$mc->addServer("memcached", 11211);
$mc->set('key_string', 'value_string');
$mc->set('key_bool', true);
