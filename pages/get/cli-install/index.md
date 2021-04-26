---
title: Commandline Installer
---

<div class="alert alert-info" markdown="0">
<b>NOTE:</b> In the USA there are two variants of the Google Pixel phones: The Google unlocked version, and the Verizon one. The Verizon one is unfortunately locked in such a way (boot loader locked) that you cannot install another operating system on it. The only way to tell is to attempt to unlock the bootloader of the phone. If you can enable "OEM unlocking" then it's an unlocked version. If "OEM unlocking" is greyed out and not toggle-able then you have the Verizon version.
</div>

## Downloading the Flasher

* Linux: [device-flasher.linux](https://release.calyxinstitute.org/device-flasher/1.0.3/device-flasher.linux)
* macOS: [device-flasher.darwin](https://release.calyxinstitute.org/device-flasher/1.0.3/device-flasher.darwin)
* Windows: [device-flasher.exe](https://release.calyxinstitute.org/device-flasher/1.0.3/device-flasher.exe)

SHA256:
* Linux: f4e68992198868148ca2d4bd0fd40d0176da4058a188a3fdf80732d04a6c3543
* macOS: 5e5542f51c1592e392114636f2e64fe9dae1cacaaf55c722822780ec5cbf9331
* Windows: 0cdaf47f1c97e43c70e0fe7cfff63fcaa140799ccc494bebf6451e96cbcdda6c

## Steps

1. Make sure you have the correct CalyxOS image for your device
2. Download the flasher for the Operating System you're using from the links above
    1. For Windows, you also need to download and install "Googles USB driver ZIP file" from <https://developer.android.com/studio/run/win-usb>
    2. For installation instructions, see <https://developer.android.com/studio/run/oem-usb#InstallingDriver>
3. Place the flasher as well as the CalyxOS image into the same folder. Do not extract or rename the zip, simply copy it as-is.
4. Double-click the flasher to run it, and follow the steps show on your screen.

   If that doesn't work, then you can:
5. Open a Terminal or Command Prompt in that directory, and then
6. Run the flasher using:
  * Linux: `chmod +x ./device-flasher.linux; ./device-flasher.linux`
  * macOS: `chmod +x ./device-flasher.darwin; ./device-flasher.darwin`
  * Windows: `.\device-flasher.exe`

## Notes
* On some Linux distros, you may have to use sudo, i.e. `sudo ./device-flasher.linux`
* On macOS, you may have to disable gatekeeper. See ["How to open an app that hasn’t been notarized or is from an unidentified developer"](https://support.apple.com/en-us/HT202491)
* On Windows, your anti-virus may falsely flag this as infected. This is because the program is written in the Go programming language, see [Golang docs](https://golang.org/doc/faq#virus) for more information.