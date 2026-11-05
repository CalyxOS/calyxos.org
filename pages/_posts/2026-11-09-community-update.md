---
title: CalyxOS community update - a sneak peek of our project roadmap
date: 2026-11-09
---

* An official introduction to the CalyxOS Web Installer, now easier to use on more devices
* The CalyxOS roadmap in the next quarter, including upcoming improvements and feature plans
* An end of life (EOL) explainer for extended support devices

It has been more than three months since the CalyxOS resumed with 7.2.2.0 and we have returned to business (and updates!) as usual. As a community-driven project, we are rolling out periodic high-level project updates to address suggestions and questions from our users and contributors. This post will be the first in this series. Below, you will find some tips for installing CalyxOS, and our roadmap for the next quarter.

### What to expect in CalyxOS 8 on Android 17

We rolled out CalyxOS 8 to all supported devices in the beginning of October. You may have read the details in our regular release posts. If not, you can find the highlights [here](https://calyxos.org/news/2026/10/01/android-17-is-here/). Changes include substantial updates to our device-flasher and our Web Installer is now much easier to use and can accommodate an expanded set of devices.

#### CalyxOS Web Installer

We built the Web Installer so that you don't have to deal with command lines and verifying downloads yourself to get CalyxOS up and running; instead you can simply install CalyxOS directly from your browser. We are working to expand the use for Web Installer to all CalyxOS supported devices, but for now, it can already be used for all our current Motorola and Pixel devices in any compatible browser like Microsoft Edge, Chrome, Brave, and other Chromium-based browsers that support WebUSB.

To get started, [check if CalyxOS supports your device](/install/). When you find your device, click to see all installation methods. If the Web Installer is available, its button will be listed at the top and reads "Install from Browser (recommended)." All you need is a good USB cable and "OEM unlocking" enabled on your device. The installer then guides you through each key step, from downloading the latest stable CalyxOS version, installing, and then relocking the bootloader. Why relock the bootloader? It prevents the operating system (OS) from being tampered with, without you knowing.

Based on popular questions from our community channels, we added a section at the top of the [Install page](/install/) to highlight important install notes. Please read that section carefully as it can significantly impact your experience with CalyxOS. And of course, always back up your data since installing another OS will wipe your phone.

**As a reminder, if you have a Fairphone or SHIFTphone, please use the device-flasher instead.** We will share an update as soon as we make the Web Installer available for these devices.

### Our project roadmap

One of the most popular questions we hear these days is "What is your plan going forward?" Here we will share what is in the works and what we have planned for the next few months:

#### Fast, reliable and quick updates

You have heard it a thousand times: CalyxOS is a FOSS OS focusing on privacy and security made easy for everyday users. As soon as we have access to security patches, we prioritize getting them to you. That also means if we don’t have access to proprietary components or device security patches, we can’t ship them. For the fastest security updates, switch your update channel settings to "Security express."

Next up is the Pixel QPR1 update. We are currently testing the reverse-engineered ports for the Pixel 6, 7, 8, and 9 series. The platform codebase will remain on the initial Android 17 release as QPR1 is not officially on AOSP. However, this means we will be able to use the latest proprietary components on these devices rather than relying on older ones. Please keep an eye on our [CalyxOS Testers Matrix channel](https://matrix.to/#/#calyxos-testers:matrix.org) if you are interested in testing out these images!

#### Feature highlights

* **Panic button**: the old panic button shipped in CalyxOS 6 was built on [Ripple](https://guardianproject.info/apps/info.guardianproject.ripple/), an app that is longer actively maintained. In July, we decided to temporarily remove this feature while we explored our community's needs and use cases in emergency situations. Since then, we have run UX research workshops and are redesigning it as a quick, reliable trigger for when you need to urgently hide or remove sensitive data, apps, and files.

* **Setup Wizard**: we are optimizing the flow and interface information design of the Setup Wizard. Soon you will see a refreshed look, a smoother workflow and clearer instructions to help you get started.

* **CalyxOS App Updater**: this is our updater for key system apps such as CalyxOS Chromium (and its components such as Trichrome library and WebView) and microG. These apps are built and signed with our HSM-backed Calyx keys. The Lupin Updater allows us to ship updates straight to you without waiting for a full OS release so you can get faster and automatic security fixes for the apps you rely on the most.

* **CalyxOS Chromium**: in the coming months, we plan to roll out staged updates that bring back several critical security and privacy features to our browser that we temporarily removed due to team capacity. As mentioned above, the updates will be delivered through the App Updater.

#### Our device support plan and EOL notes

New devices we added recently:

* **Pixel 10a**: added to our device list starting with CalyxOS 8 (Android 17)

* **Fairphone Gen. 6 and 6+**: after the beta phase, we are now officially supporting Fairphone Gen. 6. Additionally, we are pleased to announce that our support covers Fairphone Gen. 6+ as well.

Regarding our latest EOL dates for current supported devices, Android 18 will require a newer kernel than what some of the devices can reach without significant porting and maintenance. For now, we have decided to extend support for these phones to Android 17 QPR2. While it may be possible to port the kernel, the kernel update by itself is not enough to make these phones secure. Their bootloader, modem, and other proprietary firmware would still be years out of date, which doesn't meet our standard for keeping a phone private and secure.

* **Extended support devices**: this includes Pixel 4a 5G, Pixel 5, Pixel 5a 5G, moto g52, g42, g32. Support for these devices will extend to February 2027. We will keep assessing if we can feasibly extend that.

* **Fairphone 4**: this device will share the same EOL date as the other extended support devices. If it continues to get stock security updates, we may continue with limited, security-patch-only updates afterwards.

### The CalyxOS team update

We are happy to welcome three new software developers to the CalyxOS project! Deepa is focused on bringing Chromium updates and patches, alongside additional app work. Nick joined us with a wealth of experience in device ports and bring up, helping speed up updates and optimize our device support. Swetha will be working on platform-level features and support, many of which include the exciting plans detailed above! Please join us in welcoming them.

### CalyxOS Privacy Champion membership

We also have an exciting news: the Calyx team is working hard to bring back the CalyxOS Privacy Champion membership. By donating and becoming a CalyxOS Privacy Champion, you can support our work building accessible privacy and security tools. New people signing up for this membership will receive a Pixel 10a with CalyxOS pre-installed! Stay tuned for more updates from [calyx.org](https://calyx.org/)!

### Help us improve

Our [Matrix channels](/community/#main-channels) can be found in the Matrix public directory now. For reporting an issue (bugs or feature request), you can use the templates on [GitLab](https://gitlab.com/CalyxOS/calyxos/-/issues/new). We also have a [subreddit](https://www.reddit.com/r/CalyxOS/) and other social media accounts, listed on our [community page](/community/). We look forward to meeting you there!


