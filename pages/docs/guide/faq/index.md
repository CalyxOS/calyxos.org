---
title: Frequently Asked Questions
description: 🙋 Get answers to some of the most common questions!
nav_title: FAQ
toc: true
toc_title: Questions
redirect_from:
    - /faq/
    - /about/faq/
---


### What is CalyxOS?
CalyxOS is Android without Google. It is developed by the nonprofit [Calyx Institute](https://calyxinstitute.org/).

Each Android phone you buy is in reality built on top of two major components: The Android Open Source Project (AOSP) and Google Play Services. Maintained by Google, AOSP receives contributions from developers around the world. It serves as the backbone for all Android phones that manufacturers such as Samsung build upon. Google Play Services provide, among other things, access to the Play Store, push notifications, and location services. While these are great features, they come with the burden of Google tracking.

CalyxOS is based on AOSP, which means it is Android in its purest before the addition of proprietary technologies like Google Play Services. Instead, CalyxOS includes MicroG, an open-source alternative that allows most apps to work out-of-the-box. This means that the apps you love will work just like they do now.

We aspire to accomplish two major goals:

1. Utilize and promote privacy-oriented free software.
2. Limit data tracking, including metadata and geolocation.


#### What devices can run CalyxOS?
Currently, CalyxOS only supports recently Pixel devices and the Xiaomi Mi A2. We are always looking for new devices to support, but have strict eligiblity requirements.

1. **Up-to-date and consistent software support.** We prioritize consistency and security. Devices that quickly receive new Android version and frequent security updates makes it easier to develop for and ensures that CalyxOS devices are secure.
2. **Ability to unlock *and* relock bootloader with custom software.**

For more information, including how long each device will be supported, see [Device Support](device-support).


#### How does CalyxOS compare to other Android alternatives?
CalyxOS attempts to strike a balance between usability, privacy, and security. Most aftermarket Android alternatives compromise Android's security model, have limited app compatibility, or have other usability limitations.


### Is CalyxOS more secure than stock Android?
While CalyxOS offers a few security benefits over stock Android, it does not improve upon the default security model of Android. However, running CalyxOS on Pixel devices means that you have one of the most secure smartphones avilable, in large part due to the Pixel's [Titan M chip](https://www.blog.google/products/pixel/titan-m-makes-pixel-3-our-most-secure-phone-yet/).


In practice, this means that CalyxOS is more secure than most aftermarket Android software because it can run on a relocked bootloader. A relocked bootloader, among other things, allows for [verified boot](https://source.android.com/security/verifiedboot/).


### What makes CalyxOS more private than default Android?
CalyxOS is *pre*-Googled Android. It builds upon AOSP and forgoes Google Play Services, opting instead for the open-source [MicroG](https://microg.org/). MicroG mimicks many features of Google Play Services while respecting your privacy.

Because CalyxOS is a free software and privacy focused Android, we don't include the proprietary, closed-source Google services and apps. Without Google's Play Services, many applications crash or lose access to basic functionality such as push notifications and mapping. We bundle MicroG, an open-source implementation of some of Google Pay Services that fixes many of these problems.

* Samsung Galaxies = AOSP + Google Play Services + Samsung Services + Samsung Apps
* Google Pixels = AOSP + Pixel-exclusive Google Play Services + Google Apps
* CalyxOS = AOSP + MicroG + Open-Source Apps

More information on MicroG can be found [here](https://old.reddit.com/r/MicroG/wiki/index).


#### Encrypted Communications
CalyxOS prioritizes encrypted communications. We bundle network encryption applications such as Signal for voice and text messaging, Tor Browser for web browsing, Orbot for using Tor as a VPN, two VPN applications, OpenKeychain for OpenPGP support, Conversations, and Briar.


#### Limiting Metadata Collection
By using MicroG over Google Play Services, Google tracks you much less than they otherwise could. We encourage the use of the free VPN applications Calyx VPN and RiseUp VPN. We also promote Orbot and Tor Browser for hiding the IP address of the phone over the TOR network.

Additionally, CalyxOS provides the option to disable Bluetooth and Wi-Fi when they haven't been used in a while to avoid proximity tracking. We randomize the Wi-Fi MAC address (on a per network basis) to keep the use of Wi-Fi more anonymous.


#### Limiting Geolocation Tracking
This is one of the hardest issues to address because of the nature of the cellular phone network. If you have a cell phone, your location is being tracked. It is an ongoing problem that we hope to have better solutions for in the future. In addition to masking your IP address, we also implement open-source software to limit third-parties from accessing your location.

Normally on stock Android, location services are built into the Google Play Services. Since CalyxOS doesn't include Google Play Services, location services are instead handled by Unified Network Location Provider (UnifiedNLP) bundled with MicroG. By default, we use the [Déjà Vu location service](https://github.com/n76/DejaVu) which uses locally acquired Wi-Fi AP and cell tower data to resolve location as well as [Mozilla location service](https://location.services.mozilla.com).

Additionally we include utilities such as LocationPrivacy by the Guardian Project.


##### Is MicroG a privacy risk?
That is up for you to decide. Since MicroG is a free implementation of Google Play Services, it requires Google servers for some functionality, therefore it does not offer perfect privacy. However, it is significantly more private than standard Google Play Services.

One benefit of MicroG is that you do not need to log in to benefit from most of its features. By not connecting a Google account, your interactions with Google are not attached to your identity, only your IP address. 

Additionally, MicroG does not send your location data to Google constantly as Google Play Services does. In a study, Vanderbilt University Professor Douglass Schmidt found that 'stock' Android phones sent location data to Google 340 times during a 24-hour period ( see: <https://digitalcontentnext.org/wp-content/uploads/2018/08/DCN-Google-Data-Collection-Paper.pdf> ). MicroG doesn't collect location data at all.

We think of the way we have implemented MicroG as a 'harm reduction' approach. You don't have to use MicroG. You can opt-out during the CalyxOS setup wizard which you will see on the first boot. 


##### Is MicroG a security risk?
Some consider MicroG a security risk because it requires "signature spoofing." In other words, the ability for one program to impersonate the code signature of another. It needs this so it can appear to be Google Play Services to the system. The standard MicroG patch for Android to support signature spoofing simply allows it in a free-for-all style. We have instead severely controlled the scope so that it's only allowed for one signature, for one program, MicroG.  This mitigates security risks involving MicroG. [See here for more information on signature spoofing](https://calyxos.org/about/tech/microg/).


### Does CalyxOS include Pixel features found on the stock rom?
Unfortunately, many Pixel-exlusive features such as "Now Playing" are proprietary and thus not included in AOSP. This means we are unable to include them in CalyxOS.


### If there is no Google Play Services, how can I install apps?
CalyxOS comes bundled with two app stores: F-Droid and Aurora Store. F-Droid hosts many free and open-source apps. Most kinds apps you will need will be available there. For everything else, Aurora Store allows you to download apps directly from Google Play.


### How can I back up and restore the software and data on my phone?
We developed a privacy focused backup and restore application called SeedVault that is built into CalyxOS. SeedVault protects your data by encrypting your backup before it leaves your phone. Currently there are two options for backing up: USB storage and cloud storage using NextCloud. SeedVault can be accessed from Settings -> System -> Backup. The first time you run it, SeedVault will generate an encryption passphrase made up of 12 words. You must keep these words in a safe place in order to be able to restore your backups.


### Will CalyxOS make me anonymous?
No. CalyxOS does its best to limit the amount of Google tracking and bundles in free VPNs. However, some data is still sent to Google if you opt to use MicroG and VPNs are not a perfect privacy tool. If you choose to install privacy-invasive apps, they can still track you.


### Does app XYZ work?
Probably. The vast majority of Android apps work out of the box. A few apps, such as some banking ones, do not. The best way to check app compatiblity is through [Plexus](http://plexus.techlore.tech/), Techlore's crowdsourced compatibility list.


### Can I still run Google apps on CalyxOS?
Yes, Google apps work if you have MicroG enabled. To access account-specific features, you will have to login through MicroG.


### I am having a problem/encountered an issue, what should I do?
Submit an issue to the [CalyxOS Gitlab issue tracker](https://gitlab.com/groups/CalyxOS/-/issues). WHen you submit an issue, please [attach a logcat](https://wiki.lineageos.org/how-to/logcat).


### I have a feature request, what should I do?
Submit as a feature request to the [CalyxOS Gitlab issue tracker](https://gitlab.com/groups/CalyxOS/-/issues).


### Does CalyxOS have a roadmap?
Not specifically, but the [CalyxOS Gitlab Epics](https://gitlab.com/groups/CalyxOS/-/epics) page shows the big projects we are working on.


### How can I contribute to this project?


### How is CalyxOS funded?
The majority of development on CalyxOS is funded by the charitable donations of Calyx Institute members! We give out free mobile internet hotspots with *unlimited* data plans (no throttling, no data cap, US only) to donors at 'contributor' level or higher: see <https://calyxinstitute.org/membership> for info.


Additional funding for some parts of CalyxOS and/or some of the apps included with it has been generously been provided by private foundations including the NLnet Foundation, Internews, and the European Union. We have also recieved support from DuckDuckGo in the past and we continue to receive in-kind donations of free advertising from Google, as part of their "Google for nonprofits" program.
