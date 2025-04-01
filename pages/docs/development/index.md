---
title: CalyxOS Development
description: 💁 Want to get involved? We'd love your help!
nav_title: Development
toc: true
redirect_from: /development/
---

CalyxOS is Free and Open Source Software.

### Source code

All development of CalyxOS takes place out in the open on public source code repositories. We would love to have you get involved.

Our source code is available for review at [gitlab.com/CalyxOS](https://gitlab.com/CalyxOS).

It is also mirrored to [github.com/CalyxOS](https://github.com/CalyxOS).

### Issue tracking

We use GitLab for issue tracking.

Check out [list of open issues](https://gitlab.com/CalyxOS/calyxos/issues/).

You can also check [list of epics](https://gitlab.com/groups/CalyxOS/-/epics), which collect a list of related issues.

### Submitting patches

Development is done on our [Gerrit Code Review Instance](https://review.calyxos.org/).

To submit a patch, you can follow the instructions at [[gerrit]]

### Building CalyxOS

#### Short version
* This assumes you have an AOSP build environment already setup and have built it before. If you have not, for full instructions see [[build]]

Steps:
1. Initialize and sync the source code.
   * `repo init --git-lfs -u https://gitlab.com/CalyxOS/platform_manifest -b android15-qpr2`
   * `repo sync`
2. Obtain proprietary files for your device
   * `./calyx/scripts/pixel/device.sh akita` (`akita` for Pixel 8a)
3. Build
   * `source build/envsetup.sh`
   * `breakfast akita user` (`akita` for Pixel 8a, ` `user` is used for release builds, you can use `userdebug` for development builds.)
   * `m`
4. Install
   * `fastboot flashall` (Run this in the same shell where you ran the build)

Long version: See [[build]]

### Signing builds
Once you have built the OS, you will need to sign it to be able to lock the bootloader. For full instructions, see [[sign]]

### Tips

* [How to import the sources to Android Studio](https://wiki.lineageos.org/import-android-studio-howto.html)

<br />
