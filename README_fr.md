# FreshRSS pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/freshrss.svg)](https://dash.yunohost.org/appci/app/freshrss) ![](https://ci-apps.yunohost.org/ci/badges/freshrss.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/freshrss.maintain.svg)  
[![Installer FreshRSS avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=freshrss)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer FreshRSS rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Agrégateur de flux RSS avec une interface adaptée au mobile

**Version incluse :** 1.18.1~ynh4

**Démo :** https://demo.freshrss.org

## Captures d'écran

![](./doc/screenshots/screenshot.png)

## Avertissements / informations importantes

## Configuration

API (mini) How To:
* Into your user profile: Settings > profil
* Setup an API password
* Check that the API is working: https://example.net/rss/api/greader.php
* Setup your client with: username: ynh user, password: the password you just setup, URL https://example.tld/rss/api/greader.php

## Documentations et ressources

* Site officiel de l'app : http://freshrss.org/
* Documentation officielle de l'admin : https://freshrss.github.io/FreshRSS/
* Dépôt de code officiel de l'app : https://github.com/FreshRSS/FreshRSS
* Documentation YunoHost pour cette app : https://yunohost.org/app_freshrss
* Signaler un bug : https://github.com/YunoHost-Apps/freshrss_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
ou
sudo yunohost app upgrade freshrss -u https://github.com/YunoHost-Apps/freshrss_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps