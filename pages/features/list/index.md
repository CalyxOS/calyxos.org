---
title: CalyxOS Features list
nav_title: Features List
toc: true
toc_title: List of Features
---

### Apps
* List of bundled user / SuW apps
* List of system apps
### Dialer
* Signal / Whatsapp
* Sensitive numbers
### Devices
* Locked bootloader
* Pixels: Dual SIM / eSIM on some
* Mi A2: ?
### F-Droid
* Privext
* Our repos
### microG
* Signature spoofing patch?
* Location
* Optional nature
### Settings
* Network & Internet
  * Wi-Fi
    * Wi-Fi preferences
      * Turn off Wi-Fi automatically (Wi-Fi timeout)
  * Hotspot & Tethering
    * Allow clients to use VPNs
  * Private DNS
    * Cloudflare DNS
* Connected devices
  * Bluetooth timeout
* Display
  * Dark theme
    * Pure black (OLED) mode
* Privacy
  * Privacy dashboard
* Security
  * Show Panic option
  * Panic Settings
  * Restrict USB
  * Screen lock Settings
    * Scramble layout
    * Quick Settings (Allow toggling quick settings on secure lockscreen)
* System
  * Status Bar
    * Network traffic monitor
  * System icons
  * Gestures
    * Active Edge
  * Backup (SeedVault)
  * Multiple users
    * Work profile
  * microG Settings
  * System updates
### Updates
* Regular timely updates
* Every single build is tested

## Previous

List of features:
* All builds / updates are tested
* Phone Dialer has built in support for Signal and WhatsApp calling, and phone ships with Signal
* Phone Dialer has support for 'Sensitive Numbers' feature, where calls to numbers for help lines such as domestic violence, child abuse, suicide hotlines are not recorded in the call log
* These numbers are also available from a menu entry, Helplines
* Full Verified Boot ensures that the operating system has not been modified, bootloader re-locking provides physical security equivalent to stock Android
* Privacy settings lets you see what apps are requesting which permissions
* Security updates for the Operating System every month via automatic over-the-air updates
* CalyxOS comes with a list of suggested free software applications to facilitate private online access but the user always has the choice whether to install or not
* DuckDuckGo Browser is the default web browser, which blocks ads and trackers
* DuckDuckGo is the default search engine
* eSIM support and dual-sim support, where supported by the hardware
* Atorage encryption is on by default
* Two app stores are included, F-Droid for free software and Aurora store so users can install apps from the Google Play catalog anonymously
* Two-factor authentication support using hardware tokens is built in with support for Yubikeys using Yubico Authenticator
* OpenPGP encrypted email support using hardware tokens is built in using OpenKeychain and K-9 Email client
* Google DNS is replaced as fallback with Cloudflare DNS which has been audited for privacy by a third party auditor
* Cloudflare DNS is available as the default Private DNS provider
* Bluetooth timeout lets you have bluetooth turn off after user-definable period of inactivity (when no devices connected)
* Wifi timeout lets you have Wifi turn off after user-definable period of inactivity (when not connected to any network)
* USB blocking of unknown devices without prior authorization
* Tethered network devices (USB or Wifi) can use the phone's VPN or Tor
* Built-in Firewall 'Datura' lets you control network access for each app
* Ships with Tor support including Tor Browser and Orbot
* Ships with multiple free non-logging VPN's run by trusted providers
* Restrict cleartext traffic completely, globally.
* Panic button functionality built in which lets a user define actions to take when panic button is pressed ( e.g. uninstall apps, remove work profile, factory reset )
* Built-in encrypted backup and restore suite 'SeedVault' for online (using NextCloud) or off-line backups (using USB storage) of the phone's data and apps
* Scramble lockscreen PIN
* microG - Available, but completely optional, replaces some functions of Google Play Services while maintaining much more anonymity and privacy
* Mozilla Location Services (and Dejavu) available as default location services (instead of Google on stock) https://location.services.mozilla.com/
* Nominatim available as default geocoding service https://nominatim.org/
* Create and manage work profiles directly from Settings
