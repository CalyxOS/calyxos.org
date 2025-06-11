---
title: Android 16 and Pixel Support
date: 2025-06-11
---

* On June 10th, Google released Android 16 to AOSP - but without Pixel device-specific source code.
* This unexpected change impacts all custom Android ROM development, including CalyxOS.
* We’re adapting our plans and will share updates as development progresses.

Google has released Android 16 to AOSP, but this year’s release is different in a significant way: none of the usua source code for Pixel phones has been made available. This impacts not only CalyxOS, but the entire custom Android ecosystem.

Here’s what we know so far.

### Android’s release model today

* Google continues to build on the **trunk-stable / quarterly platform release (QPR)** model, which has evolved since Android 12.
* Instead of one big annual release, Android now rolls out larger and larger updates every quarter (QPRs), with features, UI changes, and improvements landing throughout the year.
* This model improves consistency but increases complexity—especially for downstream projects like CalyxOS. We've already started porting our changes to AOSP 16, but this cycle presents new challenges.

### Why Android 16 is different

Android 16 was released to [AOSP](https://android.googlesource.com/platform/manifest/+/android-16.0.0_r1) yesterday but with a one big difference than typical releases:
* **Google did not publish any device-specific source code for supported, modern Pixel devices.
* In previous years, Google released full device trees alongside new Android versions. This allowed developers to build and boot AOSP on Pixel hardware relatively easily.
* With Android 16, only the platform/framework code has been released. The device trees are missing, at least for now.

This means AOSP 16 cannot currently be built or run on any recent Pixel device easily just using official source. It’s unclear whether this is a delay or a policy change. Either way, it seriously disrupts custom ROM development and our porting efforts.

### CalyxOS Device Support Status
#### Pixel 6 - 9a

* Without official source code, these devices are currently unsupported for AOSP 16 builds.
* Pixel devices were widely supported in the custom ROM space due to their open-source friendliness (until now).
* We'll need to approach them like other non-AOSP supported devices: with the GPL Linux kernel sources and updates to Android 15 device trees, which takes time and ongoing effort.

#### Fairphones, Motorolas

* We'll look into the status of Android 16 on these devices after we're done with porting CalyxOS changes in general to AOSP 16
* We'll post an update per device once we know more.

#### Pixel 5 series

* We'll look into the status of Android 16 at the end, and see what we can do, wrt extending support.

### References
* [Building AOSP for Pixel Devices (Android 15 Guide)](https://source.android.com/docs/setup/start)
* [AOSP Source code](https://android.googlesource.com/) 
