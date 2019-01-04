# FreshRSS package for YunoHost

An efficient but powerful RSS aggregator with a nice and mobile-friendly design, as well as extension and themes support.

* [FreshRSS website](http://freshrss.org)
* [YunoHost website](https://yunohost.org)

## INSTALL

[![Install FreshRSS with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=freshrss)

![](https://freshrss.org/images/screenshot.png)


or command line :

`yunohost app install https://github.com/YunoHost-Apps/freshrss_ynh`

## UPGRADE
`yunohost app upgrade freshrss -u https://github.com/YunoHost-Apps/freshrss_ynh`

# :warning: WARNING :warning:
upgrade for stretch has now dedicated php-fpm pool. To make upgrade works :
Check if domain is already sets :
`yunohost app setting freshrss domain`
if this command does't return anything :
`yunohost app setting freshrss domain -v yourdomain.tld`

if you have multiple instances :

`yunohost app setting freshrss__instancenumber domain -v yourdomain.tld`

Changelog:

* 2019-01-04 :
    * Fix user add access hook
    * Upgrade to 1.13.0
    * Open /api url instead of /api/greader.php
* 2018-10-28 :
    * Update to FreshRSS 1.12.0
* 2018-09-23 :
    * Update to FreshRSS 1.11.2
    * Fix install on domain root path
* 2018-07-07 :
    * Update to FreshRSS 1.11.1
    * Remove deprecated helpers
    * php-fpm dedicated pool
* 2018-06-03 : Update to FreshRSS 1.11.0
* 2018-02-04 : Update to FreshRSS 1.10.1
* 2017-12-27 : Update to FreshRSS 1.9.0
* 2017-12-03 : Update to FreshRSS 1.8.0
* 2017-06-03 : Update to FreshRSS 1.7.0
* 2017-03-13 : Update to FreshRSS 1.6.3
* 2017-03-13 : Complete package refactoring
* 2017-01-22 : Update to FreshRSS 1.6.2

API (mini) How To :
* Into your user profile : Settings > profil
* Setup an API password
* Check the API is working : https://exemple.tld/rss/api/greader.php
* Setup your client with : username : ynh user, password : the password you just setup, url https://exemple.tld/rss/api/greader.php
