---
title: Targeted Advertising on CalyxOS
date: 2021-10-13
---

Two recent studies in 2021, [one from Oxford](https://arxiv.org/pdf/2109.13722.pdf) and one from [University of Edinburgh](https://www.scss.tcd.ie/Doug.Leith/Android_privacy_report.pdf), have attempted to develop metrics for how much advertising-related tracking of personal information and behavior actually happens on Android and iOS devices.

Shocking no one, the answer is: a lot. Google, for example, has a window into nearly 100% of all app usage on stock Android devices. Most commercial device manufacturers include pre-installed apps that include numerous tracking networks.

Both Google and Apple have designed their operating systems to facilitate the process of turning your personal information into a revenue stream, for apps you have installed and ultimately for carriers, device manufacturers, and Google or Apple. This is not simply a question of advertising: the extent of the personal data accumulated for the purpose of marketing is truely staggering, and has increasing consequences in our everyday lives, including health care, insurance, credit, immigration, and incarceration.

After years of public criticism, both iOS and Android have gradually made it harder for app developers to track users without going through the recommended hoops. While it was once possible for normal apps to track users with immutable identifiers related to the device, such as the IMEI number, this is no longer possible.

For both iOS and Android, major changes are coming soon (or newly deployed) to make tracking user behavior across apps and platforms more difficult. 

In iOS 14.5, users now have to **opt-in** to being tracked on a per-app basis (previously they could opt-out). In Android 12, the ability to **opt-out** of tracking will actually be enforced on a per-device basis (previously, the opt-out was just a flag sent to the apps, now the apps won't get the tracking identifier).

The operating systems can enforce these changes because there are basically three identifiers that the vast majority of advertising networks and data brokers use to correlate user behavior and personal information:

* Apple Advertising Identifier (IDFA): provided to each app by the OS on Apple devices and shared among all the apps.
* Android Advertising ID (AAID): provided to each app by the OS on Android devices and shared among all the apps.
* Facebook App User IDs: An additional unique identifier for a Facebook user account that can be used by the Facebook ad network if the app is privvy to the user ID (for example, if you used Facebook to authentication for the app or if you linked your account in any way).

Google advertising network uses AAID (on both Android and iOS devices), Apple's network uses IDFA (on iOS only), but most third party networks (including Facebook's) can use all three. If you supply an app with an email address, or other unique identifier, that is certain to be used as well.

With the changes made by Google and Apple, there is likely to be attempts recover some of the lost revenue. As with websites, many apps may stop working if you have interest-based advertising disabled. Or, apps may attempt to track users by other means, such as building a unique fingerprint of the hardware by measuring slight variations in the sensors. Some website do this already with web browsers, allowing a website to uniquely identify a visitor even if all cookies are turned off (although this practice is not common).

Lest one think that Google and Apple are making these changes because of a sudden change in heart, the new privacy-enhancements in their respective platforms have the consequence of limiting the information that advertisers have about your personal information, but not limiting how this information is retained by Google or Apple themselves, potentially increasing their strategic leverage over competitors. 

How does all this relate to CalyxOS?

In CalyxOS, the Android Advertising ID (AAID) is always random, every single time an app requests the value. There is no way to turn off this behavior. Like it or not, CalyxOS prevents all tracking with the AAID, which has the effect of preventing most tracking by all ad networks and data brokers.

However, you will still see ads, and CalyxOS doesn't do anything to prevent tracking through the Facebook ID.

With Android, if you want to block ads themselves you have two options:

* rooted devices: install an app that modifies your system to block certain domains known to be used for tracking. This is a bad option, because running a device with root privileges completely undermines the security of your device. CalyxOS does not support this.
* unrooted devices: install an app that sets up a fake VPN that filters out certain domains. This is also a bad option, because then you cannot run a real VPN.

For apps available in F-Droid, TrackerControl supports the VPN approach, and AdAway supports both rooted and VPN approaches. Additionally, there are numerous similar commercial apps available in Aurora Store.

In the future, CalyxOS will incorporate the rooted approach, but in a way that does not require a rooted device. It is easy to do this system-wide, but it will be hard to allow the user to selectively block tracking domains on a per-app basis. This will allow you to both not see advertising in apps, and also prevent tracking that uses other networks that don't rely on AAID.

One additional note: mobile carriers still have access to the hardware identifiers on Android and can use this to correlate hardware information with advertising IDs that might be reset. Verizon, for example, directly owns one of the largest advertising networks and is also the largest mobile carrier in the US. I have not seen research or reporting that answers the question of how Verizon uses it privileged position as a mobile carrier to enhance it's ad network, but chances are they do. CalyxOS does not allow carrier apps with special access to hardware identifiers to be automatically installed (as is usually the case on stock Android), but these apps can still be installed manually through Aurora Store. The carrier obviously always knows most of the hardware identifiers, because that is how you connect to the mobile network, but the carrier only can tie this to your advertising identifier if they additionally have an app installed on the device.
