---
title: April Feature update
date: 2023-04-21
---

CalyxOS 4.8.3 - April 2023 feature update is now available for Pixels, Fairphone 4 and SHIFT6mq

It's currently in the beta channel, and will be rolled out to stable next week based on feedback.

### Devices on 4.7.x beta
We released 4.7.6 and 4.7.7 as beta late last month, and included some changes in that which didn't make it to the previous stable build (4.8.0). We don't usually do that, where the next build doesn't include some of the changes made in the previous build.

This build (4.8.3) includes all of those changes, and it'll continue like that going forward for the most part.

### Changelog
* CalyxOS 4.8.3
* April 2023 Feature update
* Updater: Add a new channel, called Security express
* Security express: Faster security updates, but potentially lower stability (things might break occasionally)
* Chromium: 112.0.5615.135 (latest stable)
* Firewall: Prevent apps from briefly accessing blocked network types
* Firewall: Rework VPN toggle handling
* Allow limiting biometrics to just screen unlock or just app unlock
* Fix an issue with the sensors off tile and camera
* Fix wrong charging text showing on lockscreen
* Camera: Add toggle for front facing camera horizontal flip

#### Fairphone 4 (same as 4.8.2)
* Update proprietary files to stock Android 12, FP4.SP25.B.058.20230318

##### Known issues
* AptX is temporarily disabled because it's broken.
* AptX HD is still available
* There might be occasional audio cracks

### Note

{% include install/security_notes.html %}
