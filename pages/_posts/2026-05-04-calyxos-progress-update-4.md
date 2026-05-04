---
title: CalyxOS progress report - our test build with Android 16 is here
date: 2026-05-04
---

* CalyxOS Android 16 test build (7.2.1.0) is released for community testing
* Read the known issues, notes, and recommendations about this release carefully
* Join our Matrix CalyxOS Testers room to help us test CalyxOS to prepare for the official release

Dear CalyxOS community, we are (almost) back. We are excited to share that test builds of CalyxOS are available to our community testers. Below are some details on this release and planned next steps.

These test builds are specifically for people who want to give us early feedback and help us do thorough testing. You might encounter bugs and we recommend that you do not use this test build for your primary device. We plan to follow this test release with an official release that contains fixes and improvements very soon if we find no major blocking issues during this round of testing.

### About the CalyxOS test build (7.2.1.0)

Signed with the new signing solution earlier discussed in [our talk at FOSDEM](https://calyxos.org/news/2026/02/10/calyxos-hsm-signing/), 7.2.1.0 is ported to Android 16 QPR2. 

We have created test builds for the following devices:
* Pixels 
  * 9, 9 Pro, 9 Pro Fold, 9 Pro XL, 9a 
  * 8, 8 Pro, Pixel Fold, Pixel Tablet, 8a
  * 7, 7 Pro, 7a
  * 6, 6 Pro, 6a
  * 5, 5a (5G)
  * 4a (5G)
* Fairphone 4, 5
* Motorola
  * moto g 5g (2024), moto g84, moto g34/45
  * moto g52, moto g42, moto g32

A note on kernel patches: Pixel 6 and newer Pixel devices are fully patched. All other devices are missing certain Qualcomm patches, which we are actively working to pick up alongside other upstream patches and the [May Android Security Bulletin (ASB)](https://source.android.com/docs/security/bulletin/2026/2026-05-01). We wanted to get this out as quickly as possible and official releases will include more complete patchsets as usual.

### Changes to our bundled apps 

CalyxOS ships with a set of free-and-open-source apps that can be installed in the Setup Wizard or afterwards without network access. In 7.2.1.0, the bundled apps included in CalyxOS are:

* F-Droid Basic 2.0 alpha (v 2.0-alpha8): this newly revamped version will replace the old F-Droid Basic app
* Aurora Store (v 4.7.5)
* Breezy Weather (v 6.1.3_freenet)
* GCam Photos Preview (v 1.1)
* Signal (v 8.7.3)
* OnionShare (v 0.2.3-beta)
* Tor Browser for Android (v 15.0.10 (140.10.0esr))
* Tor VPN Beta (v 1.6.0Beta-arm64-v8a): this new Tor VPN project will replace the Orbot app
* Riseup VPN (v 1.5.3)
* OONI Probe (v 6.0.1)
* CoMaps (v 2026.04.07-8-FDroid): this app will replace Organic Maps
* Scrambled Exif (v 1.7.14)
* Thunderbird (v 18.0)
* DAVx5 (v 4.5.10-ose)

CalyxVPN is temporarily excluded from this list as the organization rebuilds the capacity and infrastructure to maintain and develop this app.

### Temporary feature changes

Android 16 was a major port for CalyxOS with significant changes from Android 15. We are still undergoing full testing of features, device functionality, and app compatibility. Moving forward, it is our intention to ensure that every feature we ship works as expected, especially those critical safety features.

To that end, we decided to omit the _Panic button_ feature in this release until we revist the much needed technical and user experience updates it requires. 

Additionally, we are shipping _CalyxOS Chromium_ with less features, which you can read more about below.

We are continually updating the list of known issues as more testing is completed. You can find this list in [our GitLab repo](https://gitlab.com/CalyxOS/calyxos/-/work_items?sort=created_date&state=opened&label_name%5B%5D=Type%3A%3Abug&label_name%5B%5D=android%3A%3A16&first_page_size=100).

### Our note on CalyxOS Chromium 

In this latest test release, Chromium ships on the major stable version, 147.0147.0.7727.101, with a subset of its previous [Cromite](https://gitlab.com/CalyxOS/platform_external_calyx_chromium/-/blob/main/build/01-cromite_patches_list.txt) and [Calyx](https://gitlab.com/CalyxOS/platform_external_calyx_chromium/-/blob/main/build/02-calyx_patches_list.txt) patches. To select these patches, we  focused on the essentials:
- deGoogling the browser
- telemetry point removal
- WebRTC disabling

Notably, we have excluded some features we previously shipped (e.g. adblocker) to make it easier and faster to port to the latest Chromium version and ship Android 16. As we continue to release CalyxOS builds, we will incorporate more features and patches based on community feedback and team capacity.

### New branding

Beginning in late 2024, there has been an organization-wide effort to clarify our mission and rebuild our brand to fairly reflect our identity and values in an uplifting visual language. This includes the rebranding of CalyxOS, our vision for a privacy-respecting, security-oriented Android OS.

In this latest release of CalyxOS, you will have a sneak peek of its new visual identity. Based the latest [Material You](https://m3.material.io/) design system, we created a fresh look for CalyxOS with custom designed elements from logo boot animation to iconography. We invite you to join this journey in improving the visual language and user interface for CalyxOS by sending us your feedback. 

### How to test and give feedback

This release of CalyxOS is intended for our community testers. When you try to install and run this build, you might encounter bugs, unexpected crashes, or odd behavior. It is not prepared for your primary daily device at this time.

If you are still interested in helping us test CalyxOS, yay! Please join the [CalyxOS Matrix Tester's room](https://app.element.io/#/room/#calyxos-testers:matrix.org). You can find full instructions for testers in the pinned message, including links to our device flasher and CalyxOS builds, installation instructions, and a list of known issues. To send us your feedback, please message us directly in this channel or create a new issue in [our GitLab repo](https://gitlab.com/CalyxOS/calyxos/-/work_items?sort=created_date&state=opened&first_page_size=20).
