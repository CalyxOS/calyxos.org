---
title: Apps
description: App compatibility and apps special to CalyxOS
toc: true
---

## App Stores

### F-Droid (Free Software App Store)

* Install free software Android apps.
* The F-Droid Privileged Extension is included which lets you quickly install apps, setup auto updates, and delete chosen apps via panic trigger.
* We include our own F-Droid Repo by default, which lets us push out out-of-band updates for various apps as and when required.

### Aurora Store (Play Store Alternative)

* Install apps from the Google Play Store catalog
* A privileged extension (also known as Aurora Services) is included so that updates can be installed without any further confirmation. Install and uninstall has to be user confirmed.

## Included Apps

CalyxOS comes with a list of suggested free software applications to facilitate private online access but the user always has the choice whether to install or not. They'll always be available when needed, even when offline since they're included with the OS.

<ul>
{% for app in site.data.apps["apps"] %}
<li><a href="{{app.web}}">{{app.name}}</a>: {{app.summary}}</li>
{% endfor %}
</ul>

## CalyxOS Apps

These applications were developed specifically for use with CalyxOS, although some people have also ported these to work with other distributions.

### SeedVault (Secure Backups)

* Built-in encrypted backup and restore suite
* Online (using NextCloud) or off-line backups (using USB storage) of the phone’s data and apps.
* File backup: documents, photos, all of your files are also backed up

### CalyxOS Dialer

* Phone Dialer has built in support for Signal and WhatsApp calling. You're able to make a Signal or WhatsApp call to a contact if they're present on their service directly from the Phone Dialer.
* Phone Dialer has support for ‘Sensitive Numbers’ feature, where calls to numbers for help lines such as domestic violence, child abuse, suicide hotlines are not recorded in the call log
  * These numbers are also available from a menu entry, Helplines

### Datura (Firewall)

* Fine-grained control over network access for each app
* Block network access for an app completely
* Block background network access for an app
* Block Wi-Fi for an app
* Block Mobile data for an app
* Block VPN for an app
