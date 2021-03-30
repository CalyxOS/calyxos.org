---
title: Mi A2 10.0 Firmware
date: 2021-03-29
---

A new experimental build has been released for the Xiaomi Mi A2 which contains firmware from the stock 10.0 release.

You may recall flashing stock Oreo 8.1 before installing CalyxOS - we now have a way to avoid doing that, and this update contains the bits updating the firmware on your existing install from 8.1 to 10.0. For new installs, factory images will be available at a later date.

#### Changelog:
* Merge Xiaomi's March 2021 Security update
* Update Kernel to 4.4.261
* Include 10.0 Firmware (September 2020)

<div class="alert alert-info" markdown="0">
<h4>Read before installing</h4>
This update contains the bootloader and additional firmware files. While we have taken utmost care to make sure this works, and done lots of testing, incorrect or interrupted installation may lead to a non-working phone.
</div>

For testing this build, you need to enable USB Debugging on your device, and then run:

`adb shell setprop sys.update.channel a2ten`

And then, Settings -> System -> Updates -> Check for updates. That will begin downloading and then install the build.

If that doesn't work, you can also try running:

`adb shell cmd jobscheduler run --force app.seamlessupdate.client 1`

So far in our testing it works well, but additional testing is always helpful and appreciated.

If you can wait, it will hit the beta channel later, and then the stable channel after that, you won't have to do anything, your device will get the update automatically.

#### Additional details:

The way this works is that we included the bootloader (`abl`) from stock Oreo 8.1, and the rest from stock Q 10.0. The old bootloader is needed because that's the only version that supports Verified Boot with a custom OS like ours, however we can safely upgrade the rest, to an extent.

You may have noticed the September 2020 date above, unfortunately that is due to a bug with all Xiaomi firmware after that. Updating to those from any older build results in needing a factory reset - you simply cannot upgrade without wiping data. This is not desirable, and hence for now we've included the last working firmware where this wasn't required.