---
title: Android 16 plans
date: 2025-06-11
---

* Google has released Android 16 to AOSP
* They have not released any of the usual Pixel source code
* We're working on figuring this out

### Android 16 in general

* Google has switched to the trunk stable / big quarterly release model
* This means that instead of the huge yearly releases in the past, we now have
  big quarterly releases - which means there's more changes every quarter, but
  they're still less changes at one time
* We've started porting our changes to AOSP 16

### Devices
#### Pixel 6 - 9a

##### AOSP

* This is the biggest problem with this release
* Normally, for a Pixel device, Google releases all of the device-specific changes needed to
  get AOSP running on those devices.
* That's true for new Android versions, monthly updates, quarterly updates, and even new device launches.
* You can build AOSP Android 15 for any of these Pixels, following Google's instructions, and get to
  a working state.
* However, for Android 16 - they did not continue this practice.
* In fact, there's no Android 16 device-specific source code at all present in AOSP - it simply hasn't been released

##### CalyxOS

* This is a big problem for us, and all other custom Android versions out there.
* Pixel support was so common because it was easy and simple, in addition to all of their other benefits.
* Now, with this, we have to treat it like any of other devices we support.
* We only have very limited mandatory source code (e.g. the GPL Linux kernel), and then the rest has to be
  entirely figured out on our own, or by the community.
* That takes time and effort, and it's continued effort, given the update frequency.

#### Fairphones, Motorolas

* We'll look into the status of Android 16 on these devices after we're done with porting CalyxOS changes in general to AOSP 16
* We'll post an update per device once we know more.

#### Pixel 5 series

* We'll look into the status of Android 16 at the end, and see what we can do, wrt extending support.

### References

* 
