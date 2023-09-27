---
title: September Security Update Two
date: 2023-09-22
---

CalyxOS 4.13.3 - September Security Update Two is now available for all supported devices

| Release channel  | Date   | Notes |
| ---------------- | ------ | ----- |
| Security express | 22 September, Friday | Monday for Pixel 5, 4a (5G), 5a |
| Beta | 25 September, Monday | |
| Stable | 27 September, Wednesday | |

### Changelog
* CalyxOS 4.13.3
* September 2023 Security update, take two (2023-09-01)
* Google finally released the September 2023 Security update for Pixels
* We already had most of the patches in a previous build, [4.13.0]({% post_url 2023-09-08-september-security-update-extended-support %})
* This includes the remaining components
* Include security fix for [WebP 0day](https://blog.isosceles.com/the-webp-0day/)
* Update kernel for all devices
* microG: GmsCore v0.2.29.233013
* microG: FakeStore v0.2.1
* microG: GsfProxy update to latest upstream
* Updates to all other included apps

#### Note for Pixel 5, 4a (5G) and 5a
* We ran into an issue on these devices with the initial build, 4.13.3
* It was fixed, and fixed in CalyxOS 4.13.3-2, released on Monday

### Note

{% include install/security_notes.html %}
