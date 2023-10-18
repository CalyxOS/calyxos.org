---
title: October update, Android 14 preparation
date: 2023-10-18
---

CalyxOS 4.14.1 is now available for Pixels 5 and newer.

It's rolling out to all 3 channels (Stable, Beta and Security Express).

### Changelog
* CalyxOS 4.14.1
* Final Android 13 build, prepare for Android 14! (Just for Pixel 5 and newer)
* Chromium 118.0.5993.80 (latest stable)
* Updates to all included apps

#### Pixel Tablet, Fold
* Fix security issue with UWB, feature temporarily removed.
* We will post more details about this by end of month, giving everyone a chance to update to a build with the fix.

### Android 14 update

We plan to release a build for all devices as soon as tomorrow if all goes well.

This update was in fact released to help with that, to have a set upgrade path.

The idea is to make sure that everyone running any current version is on this last Android 13 build (just for Pixel 5 and newer)

Only then do they get the upgrade to Android 14. This lets us ensure that we only have to test the upgrade from any 13 build to this build, 4.14.1 and then from 4.14.1 to android14.

It'll go something like:

1. All existing users get updated to 4.14.1. Even if you're on the previous 4.14.0, or running an older build.
2. Once on 4.14.1 (and when Android 14 is released), you'll be offered an update to 14.
3. After that, the update cycle will continue like before.

### Other devices

We'll continue doing Android 13 updates for other devices like mentioned before. Some will get ported to Android 14, namely the Pixel 4, 4a and FP4.
