---
title: Building CalyxOS
nav_title: Build
toc: true
redirect_from:
    - /contribute/build/
    - /development/build/
---

CalyxOS is Android-based, and the usual procedure to build AOSP applies. If you're already familiar and setup to build Android, you can see the short version to get a quick idea. Otherwise, the long version goes into full detail to set it up from scratch.

This will help you setup a build environment for CalyxOS from scratch

### [Computer setup](https://source.android.com/setup/build/initializing)

#### OS
* Linux, specifically Debian Stable is preferred and is used for official builds
* Other recent Linux distros (Arch, Ubuntu, Fedora amongst many others) should mostly work just fine
* Windows will work too, using WSL2 (Windows Subsystem for Linux)
* macOS isn't supported

#### Hardware requirements
* Android building is a very intensive process, and requires a lot of resources
* Approximately 500GB of free disk space (preferably on a fast SSD), more if you want to build for multiple devices
* At least 32GB of RAM, although 64GB or higher will give you a much better experience, especially if trying to use the computer while building
* A reasonably fast / unmetered internet connection, as the initial source code download is quite large (approximately 100GB)

#### Install packages

For Debian Stable and other Debian based distros:

```shell
sudo apt update && sudo apt install bc curl default-jdk-headless default-jre-headless git git-lfs libncurses5 libncurses5-dev libssl-dev lz4 m4 python3-lxml python3-protobuf python3-yaml python-is-python3 rsync zip protobuf-compiler
```

Other distributions may have the same or similar names for packages.

You may need to run the below command to prevent some warnings when building

```shell
sudo sysctl -w kernel.unprivileged_userns_clone 1
```

### Downloading the source code

#### [repo](https://source.android.com/setup/develop#installing-repo)
repo is the tool used to download all the different CalyxOS (and AOSP) source code repositories

```shell
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
```

#### CalyxOS
Now you can download the CalyxOS source code.

```shell
mkdir ~/calyxos/android15-qpr2
cd ~/calyxos/android15-qpr2
repo init --git-lfs -u https://gitlab.com/CalyxOS/platform_manifest -b android15-qpr2
repo sync -j8 # You may use a higher number here if you have a fast computer and fast internet
```

This will be a big download and may take a long time. Once it's done, you can build CalyxOS

##### Proprietary files
Phones need a lot of proprietary files to boot and for all hardware to work, we have automated scripts to download and set them up.

```shell
./calyx/scripts/pixel/device.sh akita # Replace akita (Pixel 8a) with your device codename here
```

### Building
You made it this far! Now you can finally build CalyxOS

```shell
source build/envsetup.sh
breakfast akita user # Replace akita (Pixel 8a) with your device codename here and user with userdebug if you want a debug build
m # Yes, just the letter 'm'
```

This will be the longest step, it may take hours depending on your computer. Sit back and watch it build!

### Installing
* You need to unlock your device. If you haven't done so already, you can run `fastboot flashing unlock` to unlock your device.
* After that, to install the freshly built images, run: `fastboot flashall` directly from the source code folder.

Congrats! You just compiled and installed a build of CalyxOS on your device.

## Components built outside the OS
To keep the OS build simple and fast we build some components separately outside the AOSP build system, and copy them to a `prebuilts` repository so they don't need to be built every time the OS is built. A list of those with links to build instructions:

* [Linux kernel](kernel)
* [Chromium](chromium)
* [[app-microg]]

Additionally, we include some apps from F-Droid in the build process. These are the upstream binaries shipped as-is without any modifications.

## Emulator
To build and run CalyxOS Emulator images, see [Emulator](emulator)

## Releases

The official [[production builds => get]] process is described under [production](production)
