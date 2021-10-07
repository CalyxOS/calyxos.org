---
title: Security FAQ
description: Frequently asked questions about CalyxOS security
toc: true
---

### How secure is the signing infrastructure for the OS builds?

Signing is a cryptographic process where we take the factory image of CalyxOS and apply a digital signature that allows your device to attest that the image actually came from Calyx and no one else.

CalyxOS factory images and OTA updates are signed off-line by one person with sole custody of the signing keys.

### Could a rogue developer compromise the over-the-air updates?

As an open source project, CalyxOS depends on the contributions from many developers and many other projects. Changes go through stringent review process. Ultimately, there are a small number of people who have (separate) trusted roles, such as creating or signing the factory images.

### What are the security implications of the extended permissions for F-Droid

In CalyxOS, F-Droid is given the ability to update apps without approving each one manually, much like the Google Play Store. This is achieved with the [F-Droid Privileged Extension](https://gitlab.com/fdroid/privileged-extension/). F-Droid also has the ability to automatically install updates, although this is turned off by default (in the F-Droid settings).

The special permissions granted to F-Droid introduce these possible attacks:

* There could be a vulnerability in the F-Droid bundled with CalyxOS, although we [build our own](https://gitlab.com/CalyxOS/platform_external_fdroid_fdroidclient).
* An attacker could include a compromise in the remote app repositories. The default repositories configured in CalyxOS are run by fdroid.org and CalyxOS itself. These repositories goes through multiple verification steps to guard against this type of attack.

App stores cannot modify the fundamental security model of the Android operating system: When installing an update, the new app will only be accepted if verified to be from the same developer as the original version of the app. However, Android also always accepts the identity of the developer when first installing a new app, which is why it is important that the app repositories are not compromised.

In the advanced settings of F-Droid, it is also possible to enable the ability of F-Droid to automatically install and remove apps (this is turned off by default).

For more information, see [F-Droid security model](https://f-droid.org/en/docs/Security_Model/).

### What are the security implications of the extended permissions for Aurora Store?

In CalyxOS, Aurora Store is given the ability to update apps without approving each one manually, much like the Google Play Store. This is achieved with [Aurora Services](https://gitlab.com/CalyxOS/platform_packages_apps_AuroraStorePrivilegedExtension).

The special permissions granted to Aurora introduce these possible attacks:

* There could be a vulnerability in the Aurora Store bundled with CalyxOS. We use the [version built by F-Droid](https://f-droid.org/en/packages/com.aurora.store/).
* An attacker could compromise the Google Play Store servers used both Aurora and the Google Play Store.

App stores cannot modify the fundamental security model of the Android operating system: When installing an update, the new app will only be accepted if verified to be from the same developer as the original version of the app. However, Android also always accepts the identity of the developer when first installing a new app, which is why it is important that the app repositories are not compromised.

### Is it possible to root CalyxOS?

Running any Android device with root permissions severely undermines the security of the device. CalyxOS does not support this.
