---
title: Getting Started
toc: true
redirect_from: /start/
---

# CalyxOS User Guide

Welcome to CalyxOS! You have joined a community of privacy enthusiasts, activists, journalists and everyday users interested in having greater agency over how their data is shared online.

This introductory guide will help you navigate the features, changes, differences, and setbacks that come with using a custom OS like CalyxOS.

The Calyx Institute and especially the CalyxOS team have and continue to pour a lot of effort into creating an accessible, user friendly, privacy focused experience. We value the community’s suggestions, feedback, and questions. If you ever need support or have a feature idea, please let us know at [[community]]. There, you will find a list of Matrix rooms, such as CalyxOS. Join the main discussion at [[community]] to get started, and a developer or community member will direct you to a focused channel if your suggestions/questions are more useful elsewhere.

Thank you for using CalyxOS!

## CalyxOS vs Stock Android

CalyxOS will work differently than the Android that comes with most devices. Here are some noticeable differences.

* Degoogled: The parts of Android that send your personal data to Google have been all removed.

* Alternative app stores: Install open-source apps with F-Droid, or install apps from the Play Store anonymously with Aurora Store.

* Privacy enhancements when using CalyxOS:
  * Tracking prevention: no apps can track you using the advertising identifier, as it is randomized on every request.
  * Better Web Browsing: the default web browser (Chromium) and the browser component used in most apps has been modified to add security enhancements and block advertising trackers.
  * Datura Firewall: an easier way to block network access for particular apps.
  * SeedVault: a secure way to back up your entire device.
  * Signal and WhatsApp: When making a call, CalyxOS encourages you to make it via Signal or WhatsApp (if installed) when possible. Signal and WhatsApp offer encrypted calling and videochat, as well as text messaging, if both parties are using Signal or WhatsApp.

* Limitations & incompatibilities:
  * CalyxOS does not yet include the ability to block advertising and trackers in all apps without running a third party VPN-based app or using Private DNS to block these.
  * Paid Google Play store apps might not always work. (logging in to a Google account in microG and enabling "Answer license verification requests" in microG Settings > Play Store services may help)
  * Some free apps will not work, such as Google Wallet.
  * The built-in keyboard does not support gesture typing.

* Changed defaults
  * The default search engine is DuckDuckGo, an alternative to Google search. It will function similarly, but may provide slightly different results depending on the query.

## Getting started

CalyxOS comes with two app stores, F-Droid and the Aurora Store.

### F-Droid

F-Droid is the preferred app store for CalyxOS. All the apps available in F-Droid are free and open source software, and contain no trackers or advertising.

Use F-Droid to install free software Android apps.

In addition to the standard F-Droid source for apps (aka “repo”), CalyxOS includes two other repos, the CalyxOS Local Repo, used for installing bundled apps, and the Calyx Institute repo, which allows us push out updates for various apps when needed.


### Aurora Store

Aurora Store is an open source, alternative way to access the Google Play Store. With Aurora Store, you can download apps, update existing apps, search for apps, get details about in-app trackers, spoof your device details and much more.

Aurora Store allows you to access Google Play Store using either anonymous credentials, or your own Google Account.

While we recommend using F-Droid for most of your apps, certain apps like Facebook, Instagram, Google apps, and others can only be found on the Aurora Store. When in doubt, search for your preferred app in F-Droid first. If not available, it will most likely be available in the Aurora Store.

### microG

In CalyxOS, we have replaced the proprietary parts of the Android operating system that depend on Google Play Services with an open source alternative called "microG".

There are many problems with Google Play Services when using a custom OS and trying to maximize privacy:

Most popular apps do not work without Play Services installed.
Google uses Play Services to gather data on how you are using your device, including location and advertisement tracking.
Google tightly controls which vendors are allowed to install Play Services on new devices.

microG is a open source replacement for Google Play Services (and related software), but it only includes the useful parts. Unlike Play Services, microG does not have any advertising or location tracking, for example.

Features of microG:

Lighter on battery, memory, and CPU usage.
Allows you to opt-in to specific Google Services if you want.
Location: typically, an Android device will using WiFi and cell-towers data from Google to help determine precise location. microG does this without using Google, and without reporting your location to Google.
Notifications: most chat apps depend on Play Services to be alerted when a new message should be delivered to the user. microG allows your device to use this service from Google without the full Play Services installation.

When you first start your phone, you will be given several options for how you'd like to set up microG in your device.

We recommend the default option, microG enabled, no Google Account, push notifications enabled.

Read [this](https://calyxos.org/docs/guide/microg/) for more information on how microG will impact your experience.

### Contacts

Options:

#### Add an account to DAVx5
1. Launch the DAVx5 app
1. Follow the steps at [DAVx5 website](https://www.davx5.com/tested-with) to configure an account
1. Once done, wait for some time and your contacts should show up in the Contacts app.

Preferred since it syncs changes.

#### Copy it from another Android phone
1. On the other phone, open the Contacts app
1. Tap Fix & Manage at the bottom
1. Tap Export to file
1. Copy the ".vcf" file to your CalyxOS phone
1. On your CalyxOS phone - open the Contacts app, then open Settings from the drawer on the left
1. Tap Import, then choose the copied ".vcf" file

It will only be a one-time copy.

## Apps

### App Stores

F-Droid - Catalog of open-source apps available for download.

Aurora Store - Download social media, Google apps, games, and other non-open source apps - A Google Play Store Client

### Messaging

Messaging - The default SMS app. Messages not encrypted.

Signal - End-to-end encrypted messaging app

K-9 Mail - Email client, supports IMAP, POP3, and IMAP Push. Protects against media-based read receipts, works with Gmail

Briar - End-to-end encrypted and decentralized messaging app

### CalyxOS apps

Backup - SeedVault, a CalyxOS project

Firewall - Datura Firewall, a CalyxOS Firewall that allows for fine grain control over network permissions

### Web Browsers

Tor Browser - Private browser, no tracking, surveillance, or censorship

Chromium - Ad/tracker-free, secure, browsing, with the privacy-enhanced CalyxOS Chromium browser, built with select Cromite/Brave patches 

### VPNs

Orbot - Orbot allows access to Tor by accessing a local SOCKS or HTTP proxy, or as a VPN for use in all apps

RiseupVPN - Free secure VPN powered by Bitmask

CalyxVPN - Free Calyx Institute VPN for Android powered by Bitmask

### Utilities

Breezy Weather: An open-source weather app

Scrambled Exif - Removes metadata from pictures before sharing

OONI Probe - Open Observatory of Network Interference (OONI) app that provides speed tests and checks to see if any websites or messaging apps are blocked in your network. Detects internet censorship

DAVx5 - An adapter that allows access to external contacts and calendar services (such as with Nextcloud)

MuPDF viewer - PDF viewer - transparent

Organic Maps - Offline, crowd-sourced maps with no ads, no trackers, and no data collection

OnionShare: File-sharing utility which uses Tor for secure and anonymous sharing

## Datura Firewall Guide

To access Datura Firewall, swipe up on the home screen to see a list of all currently installed apps. Open the app called "Firewall".

Datura Firewall allows for fine grained control over network permissions to each app. When downloading CalyxOS for the first time, many of the apps allow network access by default.

In Datura, you will see a list of all your downloaded and system apps. Under each, you can control if the app allows network access. access via: background network services, Wi-Fi data, Mobile data, or VPN data.

The main blue toggle next to the app name will turn all of these off or on at once, or you can open the drop down menu under each app to individually control different network permissions.

Some apps, like the Aurora store, require an all or nothing approach - either all network permissions must be on or off.

When an app does not request network access, but does so after an update, Datura will automatically block it by default.

It is possible to block internet access by default when first installing apps, to do so, click on the three dots at the upper right corner, then on Settings, and then toggle off "Allow internet for new installs". You'll get a notification when an app is installed, asking if you'd like to grant it internet access.

Datura provides quick and easy access to these network controls, so you can quickly allow network access momentarily for an app, and then turn those permissions back off when not in use. Datura Firewall never changes your set preferences without your control.

## SeedVault Guide

To use SeedVault, swipe up on the home screen to see a list of all currently downloaded apps. Open the app called "Backup".

SeedVault will require you to enter a 12 word recovery code to restore data. This is to protect you - only you should be able to access backup data! Write down the 12-word recovery code somewhere secure to make sure you have access later.

Once you have entered your recovery code, SeedVault will prompt you where you'd like to store your backup. e.g. USB drive, on the device, WebDAV, etc.

SeedVault is integrated into CalyxOS and can backup app data. No other backup/sync client can do that on CalyxOS.

On stock Android your only option is backing up to Google, and on iOS only iCloud.

## Google Camera

CalyxOS does not come with Google Camera and Google Photos, which are included in base Android. The CalyxOS team removes as much of Google's software as possible from CalyxOS. However, some users may want to use Google's photo apps to best utilize the hardware of their device.

### To get Google Photos and Google Camera:

1. Open the Aurora Store
2. Search for the Google Photos and Camera apps and download
3. Before opening either of the apps, open the Firewall app.
4. Under the Google Photos and Google Camera apps, turn off all network access.

### Is using Google Photos and Google Camera a privacy concern?

Because Datura Firewall blocks network access from these apps, much of the concern is removed. However, these apps are not open source. Developers and users are not made aware of what data these apps collect, how it is collected, where it goes, or who it is given to.

## Browser choice

CalyxOS comes with two default browser options: Chromium and Tor Browser.

The Chromium that comes with CalyxOS is different from Google Chrome. It is heavily modified to prioritize privacy, it builds upon patches from Cromite, a privacy focused browser with ad blocking and many anti-tracking privacy enhancements.

For a high degree of anonymity, you may also consider Tor Browser with the following features:

* Better privacy than other browsers.
* All connections run over three or more network hops to anonymize your IP address.
* You can browse "onion sites" for heightened anonymity.

There can be disadvantages of using the Tor Browser:

* Incompatible with some websites.
* Slower to browse the web because of the extra network "hops".

Curious how well your browser of choice protects you compared to Chrome, Firefox, Safari, Tor, and more? See [Privacy Tests](https://privacytests.org) for an overhead view of the various protections offered by your browser.

More browser options are available via F-Droid and the Aurora Store.

## Cool Tips

### Work Profiles
You may configure a work profile by setting one up with the Work Profile app. The CalyxOS team has made accessing the work profile easy. You do not need to restart or log out of the device.

Swipe up on the homescreen to see all of your apps. Swipe left to see the apps in your work profile. These apps will not access the data from the main profile, even if they are duplicates.

Despite the name, "work" profiles do not need to only be for your job! You can use the work profile feature to keep a good work/life balance, school, maintaining multiple app profiles on the same device, isolate data from your main profile, turn off apps you don't trust as much, etc.

### Wi-fi Timeout & Bluetooth Timeout

CalyxOS allows for users to set automatic Wi-Fi and bluetooth timeouts. This prevents your device from being connected to networks and devices when either of these features are not in use.

To set Wi-Fi timeout:
1. Open Settings from the app page
1. Select Network & Internet
1. Select Internet
1. Scroll to the bottom of the page, past the list of available Wi-Fi networks if available
1. Select Network Preferences
1. Select Turn off Wi-Fi automatically
1. Select the timeout timeframe

To set Bluetooth timeout:
1. Open Settings from the app page
1. Select Connected Devices
1. Select Bluetooth timeout
1. Select the timeout timeframe

## Updates

Installing updates is one of the most important things you can do to keep your phone secure.

CalyxOS provides automatic, monthly (at least), over-the-air security updates for the operating system to keep your phone up to date.

In order to keep apps updated, follow these steps:

* F-Droid will notify you of app updates.
* To make F-Droid automatically install app updates, open F-Droid, go to Settings and enable "Automatically install updates".
* To update apps via Aurora Store, open Aurora Store, press the "Updates" tab at the bottom, then press "Update All".

## CalyxOS Limitations - CalyxOS versus Stock Android

CalyxOS does have several limitations. By removing Google Play services from the device, several apps will no longer work in CalyxOS:
* Google Pay (and many other payment apps)
* Some banks may actively block CalyxOS via Play Integrity
* Second line apps (Line2, Google Voice, MySudo)
* Steam, a game store site and app, does not work on CalyxOS.

Things that do work:
* Most popular apps will work e.g. Google Maps, WhatsApp, Uber, Lyft, Instagram, Spotify.

## News

Curious what changes, updates, and features are coming to CalyxOS? Check out: [[news]]
