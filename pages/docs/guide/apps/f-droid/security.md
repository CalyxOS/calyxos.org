---
title: F-Droid Security
---

In CalyxOS, F-Droid is given the ability to update apps without approving each one manually, much like the Google Play Store. This is achieved with the [F-Droid Privileged Extension](https://gitlab.com/fdroid/privileged-extension/). F-Droid also has the ability to automatically install updates, although this is turned off by default (in the F-Droid settings).

The special permissions granted to F-Droid introduce these possible attacks:

* There could be a vulnerability in the F-Droid bundled with CalyxOS, although we [build our own](https://gitlab.com/CalyxOS/platform_external_fdroid_fdroidclient).
* An attacker could include a compromise in the remote app repositories. The default repositories configured in CalyxOS are run by fdroid.org and CalyxOS itself. These repositories goes through multiple verification steps to guard against this type of attack.

App stores cannot modify the fundamental security model of the Android operating system: When installing an update, the new app will only be accepted if verified to be from the same developer as the original version of the app. However, Android also always accepts the identity of the developer when first installing a new app, which is why it is important that the app repositories are not compromised.

For more information, see [F-Droid security model](https://f-droid.org/en/docs/Security_Model/).
