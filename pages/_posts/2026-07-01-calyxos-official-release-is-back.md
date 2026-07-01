---
title: CalyxOS is back – download release 7.2.2.0 with full maintenance support
date: 2026-07-01
---

* CalyxOS 7.2.2.0 is up online. This release will receive all future updates.
* If you haven’t previously installed 7.2.1.0 (test build) and want to start or continue using CalyxOS, you need to flash your phone and install 7.2.2.0.
* With CalyxOS releases back to normal, we will continue with other backlog issues. Join the Matrix channel for our progress and user support.

Dear CalyxOS community members, we are excited to share the release of CalyxOS 7.2.2.0. This means CalyxOS is officially back from the hiatus! It has been an enduring journey for our team to resume CalyxOS releases, and we deeply appreciate all the support and solidarity we received from you along this journey, especially the latest voluntary testing you did with us. Below we are sharing some important notes for anyone planning to install or reinstall CalyxOS, along with our next steps as we work through a large backlog of issues.

### Pro tips for installing CalyxOS 7.2.2.0

If you are currently using an old CalyxOS release (6.10.10/20 or older) or any other Android OS, you will need to do a clean install of this latest CalyxOS release on your phone. Once you are done, all future updates will be automatically sent and installed over the air (OTA).

To get started, visit our [installation page](https://calyxos.org/install/), select the device model you want, and follow the different installation options to get the relevant guide and downloadable files you need.

Tools that can aid your installation:
* **[Seedvault](https://calyxos.org/docs/guide/apps/seedvault/)**: can be used to backup and restore your data from other custom ROMs, including CalyxOS 6.10.10/20 and older releases.
* **CalyxOS Web Installer**: each device-specific installation page offers multiple options to install CalyxOS. We recommend that you choose the Web Installer if it is available for your device. This is our web-based, step-by-step installation wizard to ease your installation process. Right now, the Web Installer only works for Pixel and Motorola devices. We hope to make it available for other supported devices in the future.
* **Device flasher**: this works for all devices on Windows and Linux. If you cannot use the Web Installer, you can download the command line device flasher tool matching your desktop operating system. Simply choose the Windows or Linux options on the device-specific installation page.

Please be aware, each installation method has different requirements. To avoid issues that could result in failed flashing or a bricked device, carefully read our notes on top of the installation page.

If you have previously installed CalyxOS 7.2.1.0 (test build), you will get 7.2.2.0 as an OTA update. No further action required to receive future updates.

### What to know about CalyxOS 7.2.2.0

With this release, we are pleased to announce that CalyxOS has started supporting the SHIFTphone 8. You can find the full list of supported devices in our [user documentation](https://calyxos.org/docs/guide/device-support/).

As mentioned in the [test build release](https://calyxos.org/news/2026/05/04/calyxos-progress-update-4/), we have updated the [bundled apps](https://calyxos.org/docs/guide/apps/) in the Setup Wizard and made a few temporary feature changes. We welcome any feedback about your experience. Here is [a list of open issues](https://gitlab.com/CalyxOS/calyxos/-/work_items?sort=created_date&state=opened&label_name%5B%5D=Type%3A%3Abug&label_name%5B%5D=android%3A%3A16&first_page_size=100) in case you run into the same problem.

### Our work so far

CalyxOS 7.2.2.0 is signed by us using [a new HSM-based, open-source signing solution](https://calyxos.org/news/2026/02/10/calyxos-hsm-signing/) we designed to enhance the security of the entire signing process, ensure redundancy, and remove single points of failure. You can verify CalyxOS 7.2.2.0 and future builds following [these instructions](https://calyxos.org/install/verify/). For anyone who is interested, the security audit report of the HSM provisioning ceremony script can be found [here](https://github.com/trailofbits/publications/blob/master/reviews/2026-01-calyx-hsm-provisioning-ceremony-scripts-securityreview.pdf).

In addition, we also went through significant infrastructure improvements. In particular, we have set up a cleaner server structure to streamline each release. In response to Google’s less frequent AOSP source code releases, our team developed scripts to reduce the overhead in applying monthly patches and updates. Please keep in mind, additional manual steps are still needed to compensate for AOSP changes, such as requesting and storing kernel sources with each update. Currently, our lead engineer is continuing the maintenance of the base device trees for both LineageOS and CalyxOS to bridge the gap created by the absence of Google Pixel device trees.

### What next

Starting from CalyxOS 7.2.2.0, we plan to resume security and feature updates to the best of our ability. We are also working toward increasing transparency around the CalyxOS development road map through public information sharing and documentation. Our [GitLab issue tracker](https://gitlab.com/CalyxOS/calyxos/-/work_items) remains the main channel to keep track of our progress and the best place where you help us keep track of issues, either bugs or feature requests.

As many of you may have been expecting, Android 17 has launched earlier this month. Our team is in the early stages of porting it to our supported devices. We will soon share a timeline for releasing CalyxOS 8 with Android 17.

Another update will be for our **Matrix community channels**. All of our current Matrix rooms are on older versions, resulting in bugs and security concerns. In light of these issues, we will be upgrading our Matrix rooms to [version 12](https://spec.matrix.org/v1.16/rooms/v12/) about a week from now. We will also create a new Matrix Space to ease future upgrades. Current room members will receive notifications about this upgrade and migration. We apologize for any inconvenience and hope this one week notice gives everyone time to prepare.

Last but not least, we want to share some updates on our team: Aayush, our core developer working on Aurora Store, will be leaving for another opportunity. Aayush’s contributions to CalyxOS and Aurora Store have been invaluable, and we are sure he will continue to shine in his next journey. At the same time, we welcome Habib, who will be in Nat’s place to support our infrastructure needs and improvements moving forward. We are very grateful for Nat’s contributions and hard work during his time building new CalyxOS server infrastructure. He has laid a solid foundation for CalyxOS releases, which we are sure Habib will build on.

### Help us improve

We can’t be more grateful for the enthusiasm you brought with all the voluntary testing on 7.2.1.0. Most of the conversations from our community happen on our [Matrix channels](https://calyxos.org/community/#main-channels) and our main issue tracker on [GitLab](https://gitlab.com/CalyxOS/calyxos/-/work_items). We also have a subreddit and other social media accounts, listed on our [community page](https://calyxos.org/community/). We look forward to meeting you there!
