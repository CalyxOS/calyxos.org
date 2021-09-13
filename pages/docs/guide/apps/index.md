---
title: Apps
description: 📦 App stores, app compatibility, and apps special to CalyxOS
toc: true
---

## App Stores

### F-Droid

<div class="feature small-img">
<img src="{{'/assets/images/osapps/fdroid.png' | relative_url}}" />
<div>
F-Droid is the **preferred app store** for CalyxOS. All the apps available in F-Droid are free and **open source** software, and contain no trackers or advertising.

* Install free software Android apps.
* CalyxOS gives F-Droid special privileges so that apps updates can be automatically installed.
* In addition to the standard F-Droid source for apps (aka "repo"), CalyxOS includes a source for CalyxOS apps, which allows us push out out-of-band updates for various apps when needed.
</div>
</div>

### Aurora Store

<div class="feature small-img">
<img src="{{'/assets/images/apps/com.aurora.store.png' | relative_url}}" />
<div>
Aurora Store is an **alternative client** to the standard **Google Play Store**. It uses the same standard catalog of apps and installs apps directly from the Google servers.
* By default, Aurora Store accesses the Google app catalog anonymously.
* If you want to install paid apps, or if anonymous mode is not working, you can additionally enter your Google account crendentials in the Aurora Store settings.
* CalyxOS gives Aurora Store special privileges so that app updates can be automatically installed. New app installs and uninstalls still must be confirmed as normal.
</div>
</div>

## App Compatibility

Because CalyxOS does not include Google Play Services, some applications will not function correctly. There are three ways to run CalyxOS:

* **Stock Mode**: This is the 100% de-Googled mode with no attempt to make apps work that expect Google services. Some apps will consume more battery without push notifications from Google.
* **Compatibility Mode**: In this mode, [[microG]] is used to implement the needed libraries to make most apps function, but in a way that does not leak your identifiable information to Google. In some cases (e.g. location), privacy-respecting services are used in place of Google services, and in other cases (e.g. push notifications), Google services are used anonymously.
* **Google Mode**: With [[microG]] installed, you have the option to configure it with a Google account. This will allow some additional apps and services to work, such as Google Fi, but you are no longer anonymous with respect to Google services.

Check out the [Plexus App Compatibility Database](https://plexus.techlore.tech/). In this database, the label "de-Googled" corresponds to CalyxOS without microG (Stock Mode), and the label "μ" corresponds to CalyxOS with microG installed.

For more information, see [[microg]].

## Included Apps

CalyxOS comes with a list of suggested free software applications to facilitate private online access but the user always has the choice whether to install or not. They'll always be available when needed, even when offline since they're included with the OS.

{% include_relative _app_gallery.html %}

## CalyxOS Apps

These applications were developed specifically for use with CalyxOS, although some people have also ported these to work with other distributions.

### SeedVault (Secure Backups)

<div class="feature small-img">
<img src="{{'/assets/images/osapps/seedvault.png' | relative_url}}" />
<div>
**[[SeedVault]]** allows you to securely backup your phone. All backups are encrypted and decrypted on your device, so you are the only one who is able to read the contents. CalyxOS gives SeedVault special permissions to allow full backup and restore.

* Supports remote backups using NextCloud.
* Supports local backups using USB Storage.
* File backup: documents, photos, all of your files are also backed up.
</div>
</div>

### Datura (Egress Firewall)

<div class="feature small-img">
<img src="{{'/assets/images/osapps/datura.png' | relative_url}}" />
<div>
**[[Datura]]** gives you fine-grained control over how each app can access the network.

* Block network access for an app completely
* Block background network access for an app
* Block Wi-Fi for an app
* Block Mobile data for an app
* Block VPN for an app
</div>
</div>


### CalyxOS Dialer

* Phone Dialer has built in support for Signal and WhatsApp calling. You're able to make a Signal or WhatsApp call to a contact if they're present on their service directly from the Phone Dialer.
* Phone Dialer has support for ‘Sensitive Numbers’ feature, where calls to numbers for help lines such as domestic violence, child abuse, suicide hotlines are not recorded in the call log
  * These numbers are also available from a menu entry, Helplines

