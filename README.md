<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# FreshRSS for YunoHost

[![Integration level](https://dash.yunohost.org/integration/freshrss.svg)](https://dash.yunohost.org/appci/app/freshrss) ![Working status](https://ci-apps.yunohost.org/ci/badges/freshrss.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/freshrss.maintain.svg)  
[![Install FreshRSS with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=freshrss)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install FreshRSS quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

An efficient but powerful RSS aggregator with a nice and mobile-friendly design, as well as extension and themes support.


**Shipped version:** 1.20.0~ynh1 *(:warning: This is the `upgrade` branch. The [`master` branch](https://github.com/YunoHost-Apps/freshrss_ynh/tree/master) used in the catalog is currently on version 1.19.2\~ynh1.)*


**Demo:** https://demo.freshrss.org

## Screenshots

![Screenshot of FreshRSS](./doc/screenshots/screenshot.png)

## Disclaimers / important information

## Configuration

API (mini) How To:
* Into your user profile: Settings > profil
* Setup an API password
* Check that the API is working: https://example.net/rss/api/greader.php
* Setup your client with: username: ynh user, password: the password you just setup, URL https://example.tld/rss/api/greader.php

## Documentation and resources

* Official app website: <http://freshrss.org/>
* Official admin documentation: <https://freshrss.github.io/FreshRSS/>
* Upstream app code repository: <https://github.com/FreshRSS/FreshRSS>
* YunoHost documentation for this app: <https://yunohost.org/app_freshrss>
* Report a bug: <https://github.com/YunoHost-Apps/freshrss_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
or
sudo yunohost app upgrade freshrss -u https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
