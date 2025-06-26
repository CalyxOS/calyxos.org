---
title: Community update: our progress on CalyxOS after the release of Android 16
date: 2025-06-26
---

* We have analyzed the potential impact on CalyxOS that the release of Android 16 will have, and the future trends it may be imply. 
* Given the upstream changes and internal needs, the CalyxOS team is revising our development methodologies and processes for secure and streamlined future updates.
* In the last two weeks, we have made significant progress in building and running Android 16 on Pixel 6 and newer Pixels.
* We are working to bring up the rest of modern Pixels before shifting focus to Motorola and Fairphone devices. 

As we shared in our previous announcement (https://calyxos.org/news/2025/06/11/android-16-plans/), the biggest change Google made with the release of Android 16 to AOSP was to not release the Pixel device configuration sources (device trees) and its driver binaries. Because Google has been leading the development of AOSP, this move not only means that Google's internal development progress will further impact the timelines of custom Android distributions (ROMs), but also indicates that what has previously been open to the entire free and open-source software (FOSS) community is slowly and gradually being closed.

### What it means to CalyxOS future plans

For developing CalyxOS (and other peer custom Android ROMs) on a variety of devices, there are three key elements to ensure coherent and consistent maintenance: device kernels, device trees, and the proprietary binaries used for different components of the system. In the past, releases of Android versions usually included Pixel device trees in AOSP or otherwise made them available for download. This allowed custom Android ROM developers to easily identify the configurations Google made in new Android versions and customize them accordingly. Starting with the Android 16 release, FOSS custom ROM developers will need to build and maintain their own device trees for Pixels, which takes a lot of guesswork and reverse engineering. Comparing code changes and finding ways around proprietary codes will be a major burden in all future updates.

However, this impact is somewhat limited on CalyxOS. A key factor in our resilience is that CalyxOS has been supporting devices from a diverse range of phone makers besides the Google Pixels — such as Motorolas, Fairphones, and SHIFTphones — which helps us adapt to device-specific development processes and code availabilities. Furthermore, our testing has been focusing on replicating real world experience seamlessly in our development process and we will continue this effort.

With this trend, we are also anticipating more changes in Android 16 QPR1 or QPR2 that could potentially impact kernels — there could be features that existing device kernels are not compatible with and will require significant work to continue to support past each of these AOSP updates.

The trend of Google's gradual privatization of Android OS development, albeit challenging to all custom ROM developers, has drawn attention to the importance and efficiency of tools, methodologies and processes in each stage of the development, signing and release, especially when it is happening across 20+ devices on a regular cadence, and respects the significance of quick security updates. This most recent change has prompted a close look into our current workflow. Concurrently, we are conducting a series of serious internal reprioritizations, including development (cleaning device trees, automating the extracting and matching stock properties and policies), release (preparing to make it easier for future updates), and key signing (reinforcing and ensuring key integrity, resilience, audibility, and a secure chain of trust). As a result, our users will see a hiatus in our usual schedule with respect to security and general updates. We sincerely apologize for the impact this hiatus has on users of CalyxOS, but we believe this overhaul is vital to ensuring we can put our best efforts into protecting the privacy and digital security of people who trust us by using and contributing to CalyxOS.

### What people should know with devices we currently support

#### Pixels

##### Modern Pixels
We have made significant progress bringing up Android 16 on all currently supported modern Pixels with GS201/GS101 chips (Pixel 6 and later models). We are cleaning up the Pixel device trees to make them easier to mantain and update in the future. Support is planned to continue despite the changes introduced by Google in Android 16. Update dates in the near future will be delayed as we adjust and improve our processes to build a sustainable and secure pipeline.

##### Extended support Pixels
Pixel devices in our extended support category (https://calyxos.org/docs/guide/device-support/) will be evaluated after mainline Android 16 work is done. We will share more details once we complete the assessment of the possible kernel backport work required in the near future and feature compatibility.

#### Motorola, Fairphone
We are currently focused on completing our Android 16 port to Pixel devices. Support timeline will be reviewed afterwards with updates to follow per model.

### Looking ahead

Our next step is to consolidate the schedule for ensuing updates and share it publicly, as is expected from our community. This will include adjusting timelines for Android 16 and security updates in the near future, between now and QPR1. If you are using CalyxOS with a device mentioned above, please stay tuned on our website for the update schedule. If you are looking to start using CalyxOS today, we recommend that you kindly wait for our next update. You can reach us in our community channels (https://calyxos.org/community/) for any specific questions about CalyxOS, Android 16 and our plan. We will strive to release timely updates on our progress and plan as we have them, to our website.

As part of our broader mission, the Calyx Institute and CalyxOS team is committed to providing privacy-respecting tools and resources, centering on CalyxOS, that are accessible and usable by people, even as the Android landscape continues to change.