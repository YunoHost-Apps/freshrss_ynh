<?php
 return array (
  'general' =>
  array (
    'environment' => 'production',
    'salt' => 'yunosalt',
    'base_url' => 'yunopath',
    'title' => 'FreshRSS',
    'default_user' => 'yunoadminuser',
    'allow_anonymous' => false,
    'allow_anonymous_refresh' => false,
    'auth_type' => 'http_auth',
    'api_enabled' => true,
    'unsafe_autologin_enabled' => false,
  ),
  'db' =>
  array (
    'type' => 'mysql',
    'host' => 'localhost',
    'user' => 'yunouser',
    'password' => 'yunopass',
    'base' => 'yunobase',
    'prefix' => false,
  ),
);