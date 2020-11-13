# FreshRSS for YunoHost

[![Integration level](https://dash.yunohost.org/integration/freshrss.svg)](https://dash.yunohost.org/appci/app/freshrss) ![](https://ci-apps.yunohost.org/ci/badges/freshrss.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/freshrss.maintain.svg)  
[![Install FreshRSS with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=freshrss)

> *This package allow you to install FreshRSS quickly and simply on a YunoHost server.
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

An efficient but powerful RSS aggregator with a nice and mobile-friendly design, as well as extension and themes support.

**Shipped version:** 1.17.0

## Screenshots

![](https://freshrss.org/images/screenshot.png)

## Demo

* [Official demo](https://demo.freshrss.org)

## Configuration

API (mini) How To:
* Into your user profile: Settings > profil
* Setup an API password
* Check the API is working: https://exemple.tld/rss/api/greader.php
* Setup your client with: username: ynh user, password: the password you just setup, URL https://exemple.tld/rss/api/greader.php

## Documentation

 * Official documentation: https://freshrss.github.io/FreshRSS/

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/freshrss%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/freshrss/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/freshrss%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/freshrss/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/freshrss_ynh/issues
 * App website: https://freshrss.org/
 * Upstream app repository: https://github.com/FreshRSS/FreshRSS
 * YunoHost website: https://yunohost.org/

---

## Developers info

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
or
sudo yunohost app upgrade freshrss -u https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
```
