---
title: Aurora Store Security
---

In CalyxOS, Aurora Store is given the ability to update apps without approving each one manually, much like the Google Play Store. This is achieved with [Aurora Services](https://gitlab.com/CalyxOS/platform_packages_apps_AuroraStorePrivilegedExtension). Aurora Store is not able to install apps silently or without user intervention.

The special permissions granted to Aurora introduce these possible attacks:

* There could be a vulnerability in the Aurora Store bundled with CalyxOS. We use the [version built by F-Droid](https://f-droid.org/en/packages/com.aurora.store/).
* An attacker could compromise the Google Play Store servers used by both Aurora and the Google Play Store.

App stores cannot modify the fundamental security model of the Android operating system: When installing an update, the new app will only be accepted if verified to be from the same developer as the original version of the app. However, Android also always accepts the identity of the developer when first installing a new app, which is why it is important that the app repositories are not compromised.
