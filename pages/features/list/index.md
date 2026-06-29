---
title: CalyxOS Features list
nav_title: Features List
toc: true
toc_title: List of Features
---

### Updates
* Operating system security updates delivered automatically over-the-air.
* Every single build is tested before the release to avoid device malfunctions caused by bad updates.

### Verified Boot
CalyxOS supports fully verified boot and bootloader re-locking to ensure that the OS has not been modified and maintain physical security equivalent to stock Android.


### Bundled apps
CalyxOS comes with a list of suggested free and open-source software (FOSS) to facilitate private online access. You can choose whether to install them in the Setup Wizard. Since these apps are included in the OS, they will always be available when needed, whether you are connected to the internet or not.
<ul>
{% for app in site.data.apps["apps"] %}
<li><a href="{{app.web}}">{{app.name}}</a>: {{app.summary}}</li>
{% endfor %}
</ul>

### Default options
* Browser default: Calyx Chromium (Chromium)
* Search engine default: DuckDuckGo

### App Store

#### F-Droid
[F-Droid Basic](/docs/guide/apps/f-droid-basic/) is the preferred app store for CalyxOS. All the apps available in F-Droid are free and open source software, and contain no trackers or advertising.

* CalyxOS' default app store, F-Droid installs during the Setup Wizard to enable seamless app downloads on your first day running CalyxOS.
* In addition to the standard F-Droid source for apps (aka “repository”), CalyxOS includes a source for CalyxOS apps, which allows us push out out-of-band updates for various apps when needed.

#### Aurora Store
[Aurora Store](/docs/guide/apps/aurora-store/) is an alternative client to the standard Google Play Store. It uses the same standard catalog of apps and installs apps directly from the Google servers.

* Aurora Store provides the option to download and install applications without your Google account.
* If you want to install paid apps, or if anonymous mode is not working, you can additionally enter your Google account credentials in the Aurora Store settings (some paid apps may not work).
* CalyxOS gives Aurora Store special privileges so that app updates can be automatically installed. New app installs and uninstalls still must be confirmed as normal.

### Backup with SeedVault
[SeedVault](/docs/guide/apps/seedvault/) allows you to securely back up your phone. All backups are encrypted and decrypted on your device, so you are the only one who is able to read the contents. CalyxOS gives SeedVault special permissions to allow full backup and restore.
* File backup: documents, photos, all of your files are also backed up.
* Local backup: using USB Storage (recommended)
* Remote backup: using NextCloud (experimental)

### Dialer
* Built-in support for Signal and WhatsApp calling options.
* Additional support for the ‘Sensitive Numbers’ feature to hide helpline numbers, such as domestic violence, child abuse, or suicide hotlines from your call log.

### The Datura Firewall (Firewall)
[The Datura Firewall](/docs/guide/apps/datura/) gives you fine-grained control over how each app can access the network. You can customize each app's access to the internet.
* Full network access control
* Background network access control
* Connecting to Wi-Fi, mobile data, or only via a VPN

### App Compatibility with microG
CalyxOS uses microG, an open-source service, to enable apps and programs that need Google Play Services to function so that you can use them with privacy and anonymity.
* Location services: [Positon](https://positon.xyz) or [BeaconDB](https://beacondb.net) are available for replacing Google location services
* Address search powered by [Nominatim](https://nominatim.org).

### Network
* Google DNS is replaced as fallback with Cloudflare DNS, which has been audited for privacy by a third party auditor.
* Cloudflare DNS is available as a Private DNS provider.

### SIM Support

| Device | Status |
| ------ | ------ |
| SHIFTphone 8 | any eSIM + physical SIM, dual SIM |
| Fairphone 5 | any eSIM + physical SIM, dual SIM |
| Fairphone 4 | any eSIM + physical SIM, dual SIM |
| moto g 5G - 2024 | any eSIM + physical SIM, dual SIM |
| moto g84 5G | any eSIM + physical SIM, dual SIM |
| moto g34 5G | any eSIM + physical SIM, dual SIM |
| moto g52 | physical SIM, dual SIM |
| moto g42 | physical SIM, dual SIM |
| moto g32 | physical SIM, dual SIM |
| Pixel 9a | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 9 Pro Fold | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 9 Pro XL | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 9 Pro | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 9 | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 8a | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 8 Pro | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 8 | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel Fold | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel Tablet | Wi-Fi only device |
| Pixel 7a | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 7 Pro | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 7 | any eSIM + physical SIM, dual SIM/eSIM |
| Pixel 6a | any eSIM + physical SIM, dual SIM |
| Pixel 6 Pro | any eSIM + physical SIM, dual SIM |
| Pixel 6 | any eSIM + physical SIM, dual SIM |
| Pixel 5a (5G) | any eSIM + physical SIM, dual SIM |
| Pixel 4a (5G) | any eSIM + physical SIM, dual SIM |
| Pixel 5 | any eSIM + physical SIM, dual SIM |

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
  * Turn off Bluetooth automatically (Bluetooth timeout)
* Display
  * Font
  * Icon shape
  * LiveDisplay
    * Reading mode (Grayscale)
    * Color calibration
    * Picture adjustment
  * High touch sensitivity
* Security
  * Show Panic option (temporarily unavailable)
  * Panic option settings
  * Auto reboot
  * Restrict USB
  * Screen lock settings
    * Scramble layout
    * Quick Settings (allowing toggling quick settings on secure lockscreen)
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
  * Work Profile (to isolate app and data from your main profile)
  * [microG Settings](#microg)
  * System updates (OTA)
  * Developer options
    * Restrict cleartext traffic completely, globally.
    * Airplane mode radios
* About phone
  * Android version
    * CalyxOS version
    * Android security update
  * CalyxOS version

### Misc
* Storage encryption is on by default
