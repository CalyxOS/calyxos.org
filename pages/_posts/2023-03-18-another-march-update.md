---
title: Another March update
date: 2023-03-18
---

CalyxOS 4.7 - March 2023 Quarterly Platform Release and Security update is now available for the Pixels and the Fairphone 4

We test all builds before release, however we cannot test every single thing on every single device, it'd take too much time. That's why we release the builds to beta first, and then to stable afterwards.

Unfortunately, due to a mistake we accidentally released a buggy update to stable for Pixel 6 Pro. A fixed build has since been made available. Our apologies for the incovenience.

## Releases and devices

### 4.7.0
* Initial 4.7 release for Pixel 3, 3a, 4a (5g), 5, 5a, 7, FP4
* Stable as of 17 March, Friday

### 4.7.1
* Initial 4.7 release for Pixel 6, 6 Pro, 6a
* Kept in beta for Pixel 6 and 6a due to the issues reported
* Accidentially released to stable for Pixel 6 Pro
* Fixed in 4.7.3

### 4.7.2
* Initial 4.7 release for Pixel 4
* Update kernel with some security patches for Pixel 3, 3a
* Stable as of 18 March, Saturday

### 4.7.3
* Fix video playback and recording for Pixel 6, 6 Pro and 6a
* Stable as of 18 March, Saturday

### 4.7.4
* March 2023 Security update for Pixel 6, 6 Pro, and 6a
* Google finally released the March 2023 Security update for these devices
* That has been integrated into this build
* Stable as of 20 March, Monday

## Vulnerabilities

### Exynos Modems
* Remote Code Execution exploits found in Exynos modems, including ones in Pixel 6 and 7
* For technical details see [Multiple Internet to Baseband Remote Code Execution Vulnerabilities in Exynos Modems](https://googleprojectzero.blogspot.com/2023/03/multiple-internet-to-baseband-remote-rce.html?m=1)

#### Pixel 7, 7 Pro
* Fixed
* CalyxOS 4.7.0 includes March 2023 Security update which contains the fix
* If you're running an older version, please update

#### Pixel 6, 6 Pro, 6a
* Fixed
* CalyxOS 4.7.4 includes March 2023 Security update which contains the fix

#### All other devices
* Not vulnerable, since this only affects Exynos modems found in certain devices

### Acropalypse
* Not Vulnerable
* A vulnerability in Pixel's Markup tool lets you recover the original photo from an edited screenshot
* This only affects the propreitary Google Markup app, which CalyxOS has never included
* For details see [linked tweet](https://twitter.com/ItsSimonTime/status/1636857478263750656).

## Changelog
### Pixel 6, 6 Pro, 6a
* CalyxOS 4.7.4
* Google finally released the March 2023 Security update for these devices
* That has been integrated into this build

### Pixel 4, 4 XL
* CalyxOS 4.7.2
* Initial 4.7 (March) release

## Pixel 3, 3 XL, 3a, 3a XL
* CalyxOS 4.7.2
* Update kernel with some security patches

### All other devices
* Please see <a href="{{ '/news/2023/03/16/march-update/' | relative_url }}">March update</a> for full changelog

### Note

{% include install/security_notes.html %}
