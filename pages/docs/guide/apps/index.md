---
title: Apps
description: 📦 App stores, app compatibility, and apps special to CalyxOS
toc: true
---

## App Stores

### F-Droid Basic

<div class="feature small-img">
<img src="{{'/assets/images/osapps/fdroid-basic.png' | relative_url}}" />
<div>

[[F-Droid Basic]] is the **preferred app store** for CalyxOS. All the apps available in F-Droid are free and **open source** software, and contain no trackers or advertising.

* CalyxOS’ default app store, F-Droid installs during the Setup Wizard to enable seamless app downloads on your first day running CalyxOS.
* In addition to the standard F-Droid source for apps (aka “repository”), CalyxOS includes a source for CalyxOS apps, which allows us push out out-of-band updates for various apps when needed.

In earlier versions, CalyxOS gave the client app (F-Droid) special privileges to streamline app updates, installs, and uninstalls. However, since [CalyxOS 5.1.2](https://calyxos.org/news/2023/11/30/november-feature-update/), these privileges have been dropped for new installs in favor of a newer client app (F-Droid Basic).

</div>
</div>

### Aurora Store

<div class="feature small-img">
<img src="{{'/assets/images/osapps/aurora-store.png' | relative_url}}" />
<div>
[[Aurora Store]] is an **alternative client** to the standard **Google Play Store**. It uses the same standard catalog of apps and installs apps directly from the Google servers.
* Aurora Store provides the option to download and install applications without your Google account.
* If you want to install paid apps, or if anonymous mode is not working, you can additionally enter your Google account credentials in the Aurora Store settings (some paid apps may not work).
* CalyxOS gives Aurora Store special privileges so that app updates can be automatically installed. New app installs and uninstalls still must be confirmed as normal.
</div>
</div>

## App Compatibility

Many Android apps today rely on Google Play Services to function properly. However, the Play Services is proprietary and leaks a ton of data to Google when you use it.

The approach that CalyxOS takes is to use [[microG]], an open-source service, to enable apps and programs that need Google Play Services to function so that you can use them with privacy and anonymity.

* **microG disabled**: This is the 100% de-Googled mode with no attempt to make apps work that expect Google services. Some apps will consume more battery without push notifications from Google. The presence of microG, even when disabled, will allow some apps to work that would not otherwise.
* **microG enabled, Push notifications disabled**: In this mode, [[microG]] is used to implement the needed libraries to make many apps function, but in a way that does not send any information to Google. In some cases (e.g. location), privacy-respecting services are used in place of Google services.
* **microG enabled, Push notifications enabled**: This is the default for CalyxOS. This is identical to the above option, with one minor change - for push notifications, Google services are used semi-anonymously (not tied to a user identity).
* **microG with Google Account**: With [[microG]] enabled, you have the option to configure it with a Google account. This will allow some additional apps and services to work, such as Google Fi, but you are no longer semi-anonymous with respect to Google services.

Check out the [Plexus App Compatibility Database](https://plexus.techlore.tech/). In this database, the label "de-Googled" more or less corresponds to CalyxOS with microG disabled, and the label "μ" corresponds to CalyxOS with microG enabled.

For more information, see [[microg]].

## Bundled Apps

CalyxOS comes with a list of suggested free and open-source software (FOSS) to facilitate private online access. You can choose whether to install them in the Setup Wizard. Since these apps are included in the OS, they will always be available when needed, whether you are connected to the internet or not.

{% include_relative _app_gallery.html %}

## CalyxOS Apps

These applications were developed or adapted specifically for the use with CalyxOS. They are also used in other FOSS Android distributions.

### SeedVault (Secure Backups)

<div class="feature small-img">
<img src="{{'/assets/images/osapps/seedvault.png' | relative_url}}" />
<div>
**[[SeedVault]]** allows you to securely backup your phone. All backups are encrypted and decrypted on your device, so you are the only one who is able to read the contents. CalyxOS gives SeedVault special permissions to allow full backup and restore.

* File backup: documents, photos, all of your files are also backed up.
* Local backup: support using USB Storage (recommended)
* Remote backup: support using NextCloud (experimental)
</div>
</div>

### Datura (Egress Firewall)

<div class="feature small-img">
<img src="{{'/assets/images/osapps/datura.png' | relative_url}}" />
<div>
**[[Datura]]** gives you fine-grained control over how each app can access the network. You can:

* Block network access for an app completely
* Block background network access for an app
* Block Wi-Fi for an app
* Block Mobile data for an app
* Force an app to only connect to the internet via VPN
</div>
</div>


### CalyxOS Dialer

* Phone Dialer has built-in support for Signal and WhatsApp calling options.
  * You're always shown the Signal option, and you can make a Signal call if the contact has Signal.
  * The WhatsApp option is only shown when you have WhatsApp installed, and you can make a WhatsApp call if the contact has WhatsApp.
  * If you don't want these options, they can be turned off from Menu (top right) -> Settings -> Display options -> Show call provider selection dialog.
* Phone Dialer also comes with a ‘Sensitive Numbers’ feature, where calls to helplines numbers, such as domestic violence, child abuse, and suicide hotlines, are not recorded in the call log
  * You can access these numbers from a menu entry called Helplines in the dialer

### CalyxOS Chromium

Our goal with the Chromium browser provided in CalyxOS is to offer a solid base of privacy and security enhancements vs Chromium (and by extension, vs Google Chrome) while still allowing most sites and WebView-based apps to function as expected out of the box. We do this by using select changes from [Cromite](https://github.com/uazo/cromite) (and prior to that, [Bromite](https://github.com/bromite/bromite)). Some of these include the under-the-hood deactivation of intrusive features and analytics, while others provide additional site settings to adjust features like WebGL and WebRTC, features which are sometimes necessary but which can aid in fingerprinting or identification when turned on. We also bring in the legacy ad blocker from Bromite/Cromite to offer some reasonable protection from the worst kinds of ads. You can find and adjust these features in Settings.

Compared to Google Chrome, a few of the things you'll immediately notice are:
* CalyxOS Chromium does not prompt you to sign in.
* CalyxOS Chromium does not prompt you to adjust confusing and misleading "privacy sandbox" settings.
* CalyxOS Chromium does not fill its new tab page with unsolicited site suggestions.

Here are some other things you can try to confirm that CalyxOS's Chromium is working as intended:

* [Privacy Sandbox demos](https://developers.google.com/privacy-sandbox/resources/demos) by Google. Many of these demos (including Topics API and Attribution Reporting) represent new, invasive features that will not function out-of-the-box in Cromite or CalyxOS Chromium. They may be opted out in Chrome, but they're not even available here.
* [Adblock test](https://d3ward.github.io/toolz/adblock.html) by [Ursu Edward (d3ward)](https://d3ward.github.io/). While we don't achieve the coveted 99%+, having AdBlock turned on (as it is by default) gets a much better score than the \~1% when it is turned off.
* [WebRTC Leak Test](https://browserleaks.com/webrtc) by [BrowserLeaks](https://browserleaks.com). With WebRTC turned off, as it is by default in Cromite and CalyxOS Chromium, this site returns "No Leak". With Chrome, or with WebRTC turned on (possible via the site settings, which has an address bar shortcut), more information is exposed.

You can view the CalyxOS Chromium change history on [Gerrit](https://review.calyxos.org/q/project:CalyxOS/platform_external_calyx_chromium) or [GitLab](https://gitlab.com/CalyxOS/platform_external_calyx_chromium/-/commits/main/?ref_type=heads).

While we do periodically assess our fork for new changes to include, we generally think that the changes we include offer a good balance when it comes to a default browser. We do not aim to *compete* with browsers like Cromite or Mull, but to offer a reasonable default option. That being said, users are by all means free to use whichever browser suits them, and in [the November feature update](https://calyxos.org/news/2023/11/30/november-feature-update/), we added support for using some alternative WebViews as well.
