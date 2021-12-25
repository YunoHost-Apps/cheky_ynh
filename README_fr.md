# Cheky pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/cheky.svg)](https://dash.yunohost.org/appci/app/cheky) ![](https://ci-apps.yunohost.org/ci/badges/cheky.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/cheky.maintain.svg)  
[![Installer Cheky avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cheky)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Cheky rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Surveille pour vous LeBonCoin et SeLoger

**Version incluse :** 4.4.1~ynh5



## Avertissements / informations importantes

## Features

* [Cheky](https://www.cheky.net) vous permet de créer des alertes [Leboncoin](http://leboncoin.fr/) et des alertes [SeLoger](http://www.seloger.com/).
* Vous pouvez ainsi suivre gratuitement, en fonction de vos critères de recherche, les nouvelles annonces mises en ligne sur ces sites internet.
* Les alertes peuvent être envoyées par mail, flux RSS et SMS.

## Limitations

* Pas de mise à jour automatique depuis l'ancien package [LBCAlerte](https://github.com/YunoHost-Apps/LBCAlerte_ynh)
* Application en français uniquement
* Ne fonctionne pas avec le SSO (comptes admin/utilisateurs séparés).

## Documentations et ressources

* Site officiel de l'app : https://www.cheky.net
* Dépôt de code officiel de l'app : https://github.com/Blount/Cheky
* Documentation YunoHost pour cette app : https://yunohost.org/app_cheky
* Signaler un bug : https://github.com/YunoHost-Apps/cheky_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/cheky_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/cheky_ynh/tree/testing --debug
ou
sudo yunohost app upgrade cheky -u https://github.com/YunoHost-Apps/cheky_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps