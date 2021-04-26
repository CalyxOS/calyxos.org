---
title: Frequently asked Questions
nav_title: FAQ
---

For questions about device support, both for existing and new devices, as well as support timeframe, see [Device support](device-support)

Frequently asked Questions:
<ul>
    <li><a href="#goals">What are the goals of CalyxOS?</a></li>
    <li><a href="#encrypt-communication-content">How do you accomplish encrypting the content of communications?</a></li>
    <li><a href="#prevent-metadata-collection">What countermeasures do you take against metadata collection?</a></li>
    <li><a href="#prevent-geolocation-tracking">How do you deal with the issue of geolocation tracking?</a></li>
    <li><a href="#location-services">How do you handle location services in a more private way?</a></li>
    <li><a href="#degoogled-android">What does 'de-googled' Android mean?
</a></li>
    <li><a href="#microg-privacy">Isn't using MicroG to replace Google's Play Services a privacy risk?</a></li>
    <li><a href="#microg-security">Isn't MicroG a security risk because it requires 'signature spoofing'?</a></li>
    <li><a href="#funding">How is CalyxOS funded?</a></li>
    <li><a href="#backup-restore">How can I back up and restore the software and data on my phone?</a></li>
    <li><a href="#boot-warning">Your device is loading a different Operating System</a></li>
</ul>

<h3 id="goals">Q: What are the goals of CalyxOS?</h3>
A: We aspire to accomplish 3 major goals  1) encrypt the content of communications as much as possible  2) take countermeasures against metadata collection  3) take countermeasures against geolocation tracking

<h3 id="encrypt-communication-content">Q: How do you accomplish encrypting the content of communications?</h3>
A: We bundle network encryption applications such as Signal for voice and text messaging, Tor Browser for web browsing, Orbot for using Tor as a VPN, two VPN applications, OpenKeychain for OpenPGP support, Conversations, and Briar.

<h3 id="prevent-metadata-collection">Q: What countermeasures do you take against metadata collection?</h3>
A: We encourage the use of the free VPN applications, of Orbot and Tor Browser for hiding the IP address of the phone. We have a feature to optionally disable bluetooth and Wi-Fi when they haven't been used in a while to avoid proximity tracking. We randomize the Wi-Fi MAC address (on a per network basis) to keep the use of Wi-Fi more anonymous.

<h3 id="prevent-geolocation-tracking">Q: How do you deal with the issue of geolocation tracking?</h3>
A: This is one of the hardest issues to address because of the nature of the cellular phone network. It is an ongoing problem that we hope to have better solutions for in the future, however we partially address it in several ways now: by including VPN services to cloak your IP address, by including Tor services to cloak your IP address, and by including functionality to turn off bluetooth or Wi-Fi after a user-configurable period of inactivity to prevent tracking, such as by bluetooth beacons. We also randomize the Wi-Fi MAC address (on a per network basis) as a countermeasure against tracking by unique MAC addresses. Additionally we include utilities such as LocationPrivacy by the Guardian Project.

<h3 id="location-services">Q: How do you handle location services in a more private way?</h3>
A: Normally on stock Android, location services are built into the Google Play Services. Since CalyxOS doesn't include Google Play Services, location services are instead handled by Unified Network Location Provider (UnifiedNLP) bundled with MicroG. By default, we use the Déjà Vu location service (https://location.services.mozilla.com/ ) which uses locally acquired Wi-Fi AP and cell tower data to resolve location as well as Mozilla location service (https://location.services.mozilla.com/ ). You can help crowd-source the location data for Mozilla location service by running the Mozilla Stumbler app.

<h3 id="degoogled-android">Q: What does 'de-googled' Android mean?
</h3>
A: Stock Android is a combination of the underlying Android Open Source Project (AOSP) which is free software, plus a number of proprietary layers including the Google Play Services and many proprietary Google applications ( Gmail, Google Maps, Google Drive, Duo, Google Meet, Google Fi etc ). Because CalyxOS is a free software and privacy focused Android, we don't include the proprietary, closed-source Google parts. This has benefits and drawbacks.  Many application developers rely on Google's play services in order to have basic functionality such as push notifications, mapping and others.  If you simply remove Google's proprietary layers many applications no longer work properly and some crash. To remedy this, we decided to include a free software project called MicroG whose intention is to make an open source implementation of some of Google's services but with more enhanced privacy.

<h3 id="microg-privacy">Q: Isn't using MicroG to replace Google's Play Services a privacy risk?</h3>
A: We think of the way we have implemented MicroG as a 'harm reduction' approach. You don't have to use MicroG. You can opt-out during the CalyxOS setup wizard which you will see on the first boot. Even if you choose to use it, you don't have to use a Google account with MicroG although you can, optionally. If you don't give MicroG a google account then your interactions with Google are not attached to your identity (but to your IP address).  In any case, MicroG doesn't send your location data to Google constantly as Google Play Services does. In a study, Vanderbilt University Professor Douglass Schmidt found that 'stock' Android phones sent location data to Google 340 times during a 24-hour period ( see: https://digitalcontentnext.org/wp-content/uploads/2018/08/DCN-Google-Data-Collection-Paper.pdf ) - MicroG doesn't collect location data at all.

<h3 id="microg-security">Q: Isn't MicroG a security risk because it requires 'signature spoofing'?</h3>
A: MicroG does indeed require 'signature spoofing', which in other words means, the ability for one program to impersonate the code signature of another. It needs this so it can appear to be Google Play Services. The standard MicroG patch for Android to support signature spoofing simply allows it in a free-for-all style. We have instead severely controlled the scope so that it's only allowed for one signature, for one program, MicroG.

<h3 id="funding">Q: How is CalyxOS funded?</h3>
A: The majority of development on CalyxOS is funded by the charitable donations of Calyx Institute members! We give out free mobile internet hotspots with *unlimited* data plans (no throttling, no data cap, US only) to donors at 'contributor' level or higher: see https://calyxinstitute.org/membership for info. Additional funding for some parts of CalyxOS and/or some of the apps included with it has been generously been provided by private foundations including the NLnet Foundation, Internews, and the European Union. We have also recieved support from DuckDuckGo in the past and we continue to receive in-kind donations of free advertising from Google, as part of their "Google for nonprofits" program.

<h3 id="backup-restore">Q: How can I back up and restore the software and data on my phone?</h3>
A: We developed a privacy focused backup and restore application called SeedVault which is built into CalyxOS. SeedVault uses encryption to protect your data before it ever leaves the phone. Currently there are two options for backing up: USB storage and cloud storage using NextCloud. SeedVault can be accessed from Settings -> System -> Backup. The first time you run it, SeedVault will generate an encryption passphrase made up of 12 words.  You must keep these words in a safe place in order to be able to restore your backups.