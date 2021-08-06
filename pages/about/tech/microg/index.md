---
title: microG
description: 💪 Maintain compatibility with apps.
redirect_from: /tech/microg/
---

CalyxOS ships with [microG](../../features/microg). This page lists some implementation details specific to CalyxOS.

### Signature Spoofing
microG Services Core (GmsCore) pretends to be Google Play Services by using the same package name. Apps also expect this to be signed by Google's keys, which we achieve by spoofing the signature that apps see to be that of Google Play Services.

On CalyxOS, [signature spoofing](https://review.calyxos.org/c/CalyxOS/platform_frameworks_base/+/388) is implemented in a very restricive manner. We have:
* Made the permission `signature|privileged` so only system apps signed with the right key, or privileged system apps with an explicit allowlist for this permission can use it.
* Hardcoded the signature to be spoofed instead of letting the application specify it.
* Only allowed the microG packages, GmsCore and Store to spoof signature. Both of these are included as system apps on CalyxOS so simply checking against the package name is enough.

This approach means that as far as microG is concerned, the behavior remains pretty much the same, while also not letting any other app use this functionality.

The usual concerns with this functionality are always related to the [patches provided by microG](https://github.com/microg/GmsCore/tree/master/patches). However, there is a very good reason for that, see <https://github.com/microg/GmsCore/issues/1467#issuecomment-840711695>. We use our own version of the patch as mentioned above.