# FreshRSS package for YunoHost

[![Integration level](https://dash.yunohost.org/integration/freshrss.svg)](https://dash.yunohost.org/appci/app/freshrss)
[![Install FreshRSS with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=freshrss)

> *This package allow you to install FreshRSS quickly and simply on a YunoHost server.
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

An efficient but powerful RSS aggregator with a nice and mobile-friendly design, as well as extension and themes support.

**Shipped version:** 1.16.2

## Screenshots

![](https://freshrss.org/images/screenshot.png)

## Demo

* [Official demo](https://demo.freshrss.org)

## Configuration

API (mini) How To :
* Into your user profile : Settings > profil
* Setup an API password
* Check the API is working : https://exemple.tld/rss/api/greader.php
* Setup your client with : username : ynh user, password : the password you just setup, url https://exemple.tld/rss/api/greader.php

## Documentation

 * Official documentation: https://freshrss.github.io/FreshRSS/

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/freshrss%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/freshrss/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/freshrss%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/freshrss/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/freshrss%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/freshrss/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/freshrss_ynh/issues
 * App website: https://freshrss.org/
 * Upstream app repository: https://github.com/FreshRSS/FreshRSS
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
or
sudo yunohost app upgrade freshrss -u https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
```