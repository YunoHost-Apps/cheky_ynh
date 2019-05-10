# Cheky for YunoHost

[![Integration level](https://dash.yunohost.org/integration/cheky.svg)](https://ci-apps.yunohost.org/jenkins/job/cheky%20%28Community%29/lastBuild/consoleFull)
[![Install Cheky with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=cheky)

> *This package allow you to install cheky quickly and simply on a YunoHost server.
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

**Shipped version:** 4.4.1

## Features

### Français

* [Cheky](https://www.cheky.net) vous permet de créer des alertes [Leboncoin](http://leboncoin.fr/) et des alertes [SeLoger](http://www.seloger.com/).
* Vous pouvez ainsi suivre gratuitement, en fonction de vos critères de recherche, les nouvelles annonces mises en ligne sur ces sites internet.
* Les alertes peuvent être envoyées par mail, flux RSS et SMS.

### English

* [Cheky](https://www.cheky.net) allows you to create various alerts for french classifieds ads website like [Leboncoin](http://leboncoin.fr/) and [SeLoger](http://www.seloger.com/).
* If you do not live in France, it will not be really useful for you

## Limitations

* Pas de mise à jour automatique depuis l'ancien package [LBCAlerte](https://github.com/YunoHost-Apps/LBCAlerte_ynh)
* Application en français uniquement
* Ne fonctionne pas avec le SSO (comptes admin/utilisateurs séparés).

## Additionnal informations

* Anciennement nommé LBCAlerte. Renommé depuis la [version 3.4](https://www.cheky.net/changelog#v3_4)

## Links

* Report a bug: https://github.com/YunoHost-Apps/cheky_ynh/issues
* Cheky website: https://www.cheky.net
* Cheky changelog : https://github.com/Blount/Cheky/blob/master/CHANGELOG.txt
* YunoHost website: https://yunohost.org

---

## Informations pour développeurs et développeuses

**Si vous savez ce que vous faites ET que vous souhaitez passer sur une version instable pour tester ou coder**

Au lieu de fusionner directement dans `master`, merci d'envoyer vos "pull request" dans la [branche de test `testing`](https://github.com/YunoHost-Apps/cheky_ynh/tree/testing)

Pour basculer sur la branche `testing`, merci de procéder ainsi:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cheky_ynh/tree/testing --debug
or
sudo yunohost app upgrade cheky --url https://github.com/YunoHost-Apps/cheky_ynh/tree/testing --debug
```

## Historique des versions

* 4.4.1~ynh4 (11 March 2019)
  * changed: upgrade Cheky to 4.4.1
  * fix automated upgrade method
* 4.4~ynh4 (4 March 2019)
  * removed: Debian Jessie support is dropped in favor to Stretch only (Yunohost version > 3)
  * changed: follow lastest rules from <https://github.com/YunoHost/example_ynh>
  * fixed: remove old php file <https://github.com/YunoHost/example_ynh/pull/52>
  * changed: increment YunoHost package version to `ynh4`
* 24 Feb 2019 [#16](https://github.com/YunoHost-Apps/cheky_ynh/pull/16) - Mise à jour vers la version 4.4
* 24 Sep 2018 [#11](https://github.com/YunoHost-Apps/cheky_ynh/pull/11) - Mise à jour vers la version 4.3.5
* 14 Sep 2018 [10](https://github.com/YunoHost-Apps/cheky_ynh/pull/10) - Correction images dans "annonces sauvegardées"
* 3 Sep 2018 [#8](https://github.com/YunoHost-Apps/cheky_ynh/pull/8) - Mise à jour vers la version 4.3.3
* 8 Aug 2018 [#4](https://github.com/YunoHost-Apps/cheky_ynh/pull/4) - Mise à jour vers la version 4.1
* 9 Aug 2018 [#5](https://github.com/YunoHost-Apps/cheky_ynh/pull/5) - Mise à jour vers la version 4.1
