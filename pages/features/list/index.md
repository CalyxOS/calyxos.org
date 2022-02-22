---
title: CalyxOS Features list
nav_title: Features List
toc: true
toc_title: List of Features
---

### Apps
We include a selection of recommeneded FOSS applications.
#### Optional apps
CalyxOS comes with a list of suggested free software applications to facilitate private online access but the user always has the choice whether to install or not. They'll always be available when needed, even when offline since they're included with the OS.
<ul>
{% for app in site.data.apps["apps"] %}
<li><a href="{{app.web}}">{{app.name}}</a>: {{app.summary}}</li>
{% endfor %}
</ul>

#### System apps
These apps are required for basic functionality and thus always present on the device. Some of them can be disabled but you may lose out on certain functionality on doing so.

#### Defaults
* Browser: DuckDuckGo
* Search engine: DuckDuckGo

### Aurora Store
* Install apps from the Google Play Store catalog
* A privileged extension (also known as Aurora Services) is included so that updates can be installed without any further confirmation. Install and uninstall has to be user confirmed.

### Backup (SeedVault)
* Built-in encrypted backup and restore suite
* Online (using NextCloud) or off-line backups (using USB storage) of the phone’s data and apps.
* File backup: documents, photos, all of your files are also backed up

### Dialer
* Phone Dialer has built in support for Signal and WhatsApp calling. You're able to make a Signal or WhatsApp call to a contact if they're present on their service directly from the Phone Dialer.
* Phone Dialer has support for ‘Sensitive Numbers’ feature, where calls to numbers for help lines such as domestic violence, child abuse, suicide hotlines are not recorded in the call log
  * These numbers are also available from a menu entry, Helplines

### Firewall (Datura)
* Fine-grained control over network access for each app
* Block network access for an app completely
* Block background network access for an app
* Block Wi-Fi for an app
* Block Mobile data for an app
* Block VPN for an app

### F-Droid
* Install free software Android apps.
* The F-Droid Privileged Extension is included which lets you quickly install apps, setup auto updates, and delete chosen apps via panic trigger.
* We include our own F-Droid Repo by default, which lets us push out out-of-band updates for various apps as and when required.

### microG
* Available, but completely optional, replaces some functions of Google Play Services while maintaining much more anonymity and privacy
* Mozilla Location Services (and Dejavu) available as default location services (instead of Google on stock) https://location.services.mozilla.com/
* Nominatim available as default geocoding service https://nominatim.org/

### Network
* Google DNS is replaced as fallback with Cloudflare DNS which has been audited for privacy by a third party auditor.
* Cloudflare DNS is available as a Private DNS provider.

### SIM Support

| Device | Status |
| ------ | ------ |
| Pixel 6 Pro | any eSIM + physical SIM, dual SIM |
| Pixel 6 | any eSIM + physical SIM, dual SIM |
| Pixel 5a (5G) | any eSIM + physical SIM, dual SIM |
| Pixel 4a (5G) | any eSIM + physical SIM, dual SIM |
| Pixel 5 | any eSIM + physical SIM, dual SIM |
| Pixel 4a | any eSIM + physical SIM, dual SIM |
| Pixel 4, 4 XL | any eSIM + physical SIM, dual SIM |
| Pixel 3a, 3a XL | any eSIM + physical SIM, dual SIM |
| Pixel 3, 3 XL | any eSIM, single SIM |
| Pixel 2, 2 XL | Fi-only eSIM, single SIM |
| Xiaomi Mi A2 | 2 physical SIMs, dual SIM |

### Settings
* Network & Internet
  * Internet
    * Network preferences
      * Turn off Wi-Fi automatically (Wi-Fi timeout)
  * Hotspot & Tethering
    * Allow clients to use VPNs
  * VPN
    * VPN App Settings
      * Global VPN
  * Private DNS
    * Cloudflare DNS
* Connected devices
  * Bluetooth timeout
* Display
  * Font
    * Device default (Roboto)
    * Rubik
    * Noto Serif / Source Sans Pro
    * Lato
  * Icon shape
    * Device default (Circle)
    * Pebble
    * Square
    * Vessel
    * Tapered Rect
    * Teardrop
    * Squircle
    * Rounded Recntangle
  * LiveDisplay
    * Reading mode (Grayscale)
    * Color calibration
    * Picture adjustment
  * High touch sensitivity
* Security
  * Show Panic option
  * Panic Settings
  * Auto reboot
  * Restrict USB
  * Screen lock Settings
    * Scramble layout
    * Quick Settings (Allow toggling quick settings on secure lockscreen)
* Privacy
  * Privacy dashboard
* System
  * Buttons
    * Show arrow keys while typing
    * Invert layout (navigation bar)
  * Status Bar
    * Network traffic monitor
    * System icons (status bar icons)
  * Gestures
    * Active Edge
    * System navigation
      * Gesture navigation
        * Navigation hint (hide bottom bar)
  * [Backup (SeedVault)](#backup-seedvault)
  * Multiple users
    * Work profile
  * [microG Settings](#microg)
  * System updates
  * Developer options
    * Restrict cleartext traffic completely, globally.
    * Airplane mode radios
* About phone
  * Android version
    * CalyxOS version
    * Android security update
  * CalyxOS version

### Updates
* Security updates for the Operating System every month via automatic over-the-air updates.
* Every single build is tested before being released, ensuring that you don't end up with a non-functioning device due to a bad update.

### Verified Boot
* Full Verified Boot ensures that the operating system has not been modified, bootloader re-locking provides physical security equivalent to stock Android

### Misc
* Storage encryption is on by default
