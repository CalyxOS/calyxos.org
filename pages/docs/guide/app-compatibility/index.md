---
title: App Compatibility
description: Common concerns around attestation and app compatibility
toc: true
---

## Device attestation
Device attestation is the creation of proofs of the state of a device, it can be used to proof a device runs a specific OS and that it hasn’t been tampered with.

A common use of device attestation is fighting spam and bot activity, however it has been also used by banking and government apps as a "security measure" in Android devices.

### Play Integrity
The main name when we talk about attestation in Android is [Play Integrity](https://developer.android.com/google/play/integrity) which is Google’s solution, tied to Google Play Services, and only approves OSes by OEMs who include their app suite, including Google Play Services.

Play Integrity is the biggest offender in blocking app compatibility with CalyxOS and other Android-based operating systems, apps would work fine without it, however we are locked out by every app/server that decides to opt in to using Play Integrity.

Play Integrity has three attestation levels, BASIC, DEVICE, and STRONG. CalyxOS reaches BASIC, however getting to DEVICE requires Google approving the OS, and STRONG requires [hardware attestation](https://developer.android.com/privacy-and-security/security-key-attestation). Hardware attestation uses secure hardware on your device to create a proof of the OS running on your device, and can not be easily spoofed.

#### Getting Play Integrity to work in CalyxOS
microG reimplements the Play Integrity API, and can be enabled under microG Settings → Device attestation. We do not enable it by default. It’s worth noting that enabling this option will download a proprietary binary from Google for performing the attestation.
However, since around [December 2025](https://github.com/microg/GmsCore/issues/3198), Google also now requires app license verification to get a result from Play Integrity, without it, not even the BASIC level passes.
To get it to work, follow these steps:

1. Have microG enabled in CalyxOS
1. Enable “Answer license verification requests” in microG Settings → Play Store services
1. Optionally, also enable “Automatically add free apps to library’ in the same page
1. Enable “Device attestation” in microG settings
1. Log into a Google account in microG Settings
1. Log into Aurora Store with the same Google account
1. Download your app again
1. Reboot the device

A good app to check if Play Integrity is working is [Play Integrity API Checker](https://play.google.com/store/apps/details?id=gr.nikolasspyr.integritycheck). A good result in CalyxOS is that BASIC passes, but DEVICE and STRONG don’t.

#### Not everything is Play Integrity
If you’re having issues with banking, e-ID, or payment apps, it’s not _always_ Play Integrity at fault.
For example, other measures these apps may have:

1. Root detection
1. Build type checking  (CalyxOS uses “user” builds, while most other custom ROMs use “userdebug”)
1. License verification (only)
1. Checking of installation source (CalyxOS spoofs apps installed with Aurora Store as if they were installed by the Play Store)
1. Invasive checking of apps installed and their installation sources
    1. Some apps may not like that some apps are configured as accessibility services/keyboards, as it allows that app to see the screen and do actions in behalf of the user

An app may not always be clear as to what is failing, it may just log you out, give a vague error, etc. When that is the case, the best thing to do is try making sure everything is what it should be.
Of course, some apps will always require DEVICE and STRONG integrity, and as such will not work in CalyxOS.

#### Not all banks enforce it
Many of our users have no issues using banking apps, as their banks do not enforce aggressive attestation like Play Integrity.

## How do I know if an app I need/want to use will work?
A very useful resource is [Plexus](https://plexus.techlore.tech/), it is a crowdsourced compatibility database for devices running microG, which spans across many alternative operating systems, where users share potentially needed steps to get apps working, and their experience with the app. It has an F-Droid app where you can see the reviews for the apps or help contribute to it when you're using CalyxOS!
