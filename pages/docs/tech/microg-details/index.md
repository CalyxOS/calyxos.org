---
title: microG
description: How CalyxOS uses microG
redirect_from:
    - /tech/microg/
    - /about/tech/microg/
---

CalyxOS ships with [[microG]]. This page lists some implementation details specific to CalyxOS.

### Signature Spoofing

microG Services Core (GmsCore) pretends to be Google Play Services by using the same package name. Apps also expect this to be signed by Google's keys, which we achieve by spoofing the signature that apps see to be that of Google Play Services.

On CalyxOS, [signature spoofing](https://review.calyxos.org/c/CalyxOS/platform_frameworks_base/+/388) is implemented in a very restricive manner. We have:
* Made the permission `signature|privileged` so only system apps signed with the right key, or privileged system apps with an explicit allowlist for this permission can use it.
* Hardcoded the signature to be spoofed instead of letting the application specify it.
* Only allowed the microG packages, GmsCore and Store to spoof signature. Both of these are included as system apps on CalyxOS so simply checking against the package name is enough.

This approach means that as far as microG is concerned, the behavior remains pretty much the same, while also not letting any other app use this functionality.

### Mozilla Location Services

[Mozilla Location Service](https://location.services.mozilla.com/) is an alternative to Google Location Accuracy and is enabled by default in CalyxOS. Mozilla gathers and stores your IP Address, cell phone tower information, and WiFi network information. Unlike when using Google location services, Mozilla does not get any perminant identifiers or information tied to your identity.

For more information, see <https://github.com/microg/IchnaeaNlpBackend>.
