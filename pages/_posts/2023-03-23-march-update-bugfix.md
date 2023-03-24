---
title: March update bugfix
date: 2023-03-23
---

CalyxOS 4.7.5 - Bugfix for March 2023 Quarterly Platform Release and Security update is now available for the Pixels and the Fairphone 4

Released to stable on Friday, 25 March.

## Background
Google releases security updates every month, which are usually easy to integrate.
However, every 3 months, they also released what's called a Quarterly Platform Release (QPR).

That's currently December, March, and June. Then in August / September we have the new Android version.
These quarterly updates include a LOT of code changes. They're also that month's security update, meaning we have to get it all integrated quickly.

This led to a scenario where the first build of this month had a bunch of bugs that we couldn't catch before the release, and we didn't want to delay security updates either so we didn't wait too long to test out every single thing.

We're looking into ways to maintain stability while also not delaying security updates. See [this GitLab issue](https://gitlab.com/CalyxOS/calyxos/-/issues/1554) for the existing discussion. We'll post an update once we have something implemented.

## Navigation
As noted in the changelog below, 2 button navigation has been dropped.
It had a bug after Google's March 2023 changes, wherein the recents menu (list of running apps) would only show on the homescreen.

Google never included 2 button navigation on devices newer than Pixel 4, and given that those are all no longer supported, this feature doesn't get tested or fixed by them.

As such, given we had already kept it alive for years longer than Google did, we decided to drop it, because even if we fixed it now (which may have taken a lot of time), it could've broken again in the future.
We'd much rather spend time on privacy and security related features.

## Changelog
* CalyxOS 4.7.5
* Drop 2-button navigation. It will get switched to 3-button navigation automatically.
* Google hasn't supported this in years, and recent bugs made it unusable.
* Chromium: Fix adblocking, update to 111.0.5563.115 (latest stable)
* Fix scramble pin
* Fix notifications for default SMS app (Messaging)
* Bring back Material You color themes, add more colors to it
* Fix status bar vibrate mode icon
* Improve theme of Settings -> System -> Other options -> Battery stats
* Improve theme of Settings -> System -> Status bar icons

### Pixel 6, 6 Pro, 6a:
* Fix Safetynet attestation
* Switch back to source-built kernel

### Pixel 3, 3 XL, 3a, 3a XL
* Fix auto brightness

### FP4
* Fix auto brightness

### Note

{% include install/security_notes.html %}
