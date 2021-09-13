---
title: Signing CalyxOS builds
nav_title: Sign
toc: true
redirect_from: /development/build/sign/
---

CalyxOS is built on a dedicated server and then signed separately. It can be signed on the same machine, but it has to be in a different directory.

## Build

* You need to have a [build environment](/development/build/) setup first, and a build of CalyxOS.
* Choose 'user' when running `lunch`.
* For signing, you want to build a 'target-files-package' using `m target-files-package`
* You'll also want to build the tools needed for signing and key creation, `m otatools-package otatools-key-package`

Copy:
* "$OUT/otatools.zip"
* "$OUT/obj/PACKAGING/target_files_intermediates/*.zip"

to a separate folder for signing.

Also copy:
* "$OUT/otatools-keys.zip"

if you need to create the keys used to sign the OS.

## Generating keys

If you're signing CalyxOS for the first time, you will need to create the necessary keys.

You should unzip the 'otatools-keys.zip' from the above step, preferably on an offline machine.

Run:
* `./vendor/calyx/scripts/mkkeys.sh` to generate the keys needed for all devices. Do not set a password as the signing scripts do not support that currently.

If you're building for the Mi A2 / `jasmine_sprout`, you should copy `keys/jasmine_sprout/verity.x509.pem` to `kernel/xiaomi/jasmine_sprout/certs/` in the CalyxOS source code and then rebuild.

Optionally, run:
* `./vendor/calyx/scripts/mkcommonkeys.sh` to create some common keys used to sign apps. These will not be used by default, they are used to sign certain apps put into the OS such as Trichrome (Chromium) and F-Droid.

## Signing

This assumes you've generated the keys as mentioned above.

In a folder, you should have 'otatools.zip', the 'calyx_device-target-files.zip', and 'keys'. 'keys' can be a symlink.

#### Sign the build
This will sign the build, and create ota update zips and factory images.

{% highlight shell %}
export BUILD_NUMBER=eng.$USERNAME.date # Get this from the filename
unzip otatools.zip
./vendor/calyx/scripts/release.sh sunfish calyx_sufnish-target_files-${BUILD_NUMBER}.zip # Replace sunfish with your device
{% endhighlight %}

#### Generate incremental OTAs
If you have an older build, you should symlink that to 'archive', and then you can generate an incremental OTA using:

{% highlight shell %}
export PREV_BUILD_NUMBER=eng.$USERNAME.prevdate # Get this from the filename
./vendor/calyx/scripts/generate_delta.sh sunfish ${PREV_BUILD_NUMBER} ${BUILD_NUMBER} # Replace sunfish with your device
{% endhighlight %}

#### Generate metadata for the update server

{% highlight shell %}
./vendor/calyx/scripts/generate_metadata.py out/release-sunfish-${BUILD_NUMBER}/sunfish-ota_update-${BUILD_NUMBER}.zip # Replace sunfish with your device
{% endhighlight %}

<br />

References:
* <https://source.android.com/devices/tech/ota/sign_builds>