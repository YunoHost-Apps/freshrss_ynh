<?php

return array (
  'environment' => 'production',
  'salt' => 'yunosalt',
  'title' => 'FreshRSS',
  'default_user' => 'yunoadminuser',
  'auth_type' => 'http_auth',
  'db' => 
  array (
    'type' => 'mysql',
    'host' => 'localhost',
    'user' => 'yunouser',
    'password' => 'yunopass',
    'base' => 'yunobase',
    'prefix' => false,
  ),
  'allow_anonymous' => false,
  'allow_anonymous_refresh' => false,
  'unsafe_autologin_enabled' => false,
  'api_enabled' => true,
  'extensions_enabled' => array(),
);