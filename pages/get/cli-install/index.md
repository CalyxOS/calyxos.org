---
title: Commandline Installer
---

<div class="alert alert-info" markdown="0">
<b>NOTE:</b> In the USA there are two variants of the Google Pixel phones: The Google unlocked version, and the Verizon one. The Verizon one is unfortunately locked in such a way (boot loader locked) that you cannot install another operating system on it. The only way to tell is to attempt to unlock the bootloader of the phone. If you can enable "OEM unlocking" then it's an unlocked version. If "OEM unlocking" is greyed out and not toggle-able then you have the Verizon version.
</div>

## Downloading the Flasher

* Linux: [device-flasher.linux](https://github.com/AOSPAlliance/device-flasher/releases/download/1.0.2/device-flasher.linux)
* macOS: [device-flasher.darwin](https://github.com/AOSPAlliance/device-flasher/releases/download/1.0.2/device-flasher.darwin)
* Windows: [device-flasher.exe](https://github.com/AOSPAlliance/device-flasher/releases/download/1.0.2/device-flasher.exe)

SHA256:
* Linux: 433c34770081af408ee7258c4a2cbcbe314fe770f0e9962a5c40554dac1a03c9
* macOS: 0e63cbeb2fa281a78b29e666074d4a76d998f05ba4614e55789f993483335893
* Windows: 2b475c2c779cf680878b173538f63c15de7022b50268c3d93b3fd2f0ee83d8a1

## Steps

1. Make sure you have the correct CalyxOS image for your device
2. Download the flasher for the Operating System you're using from the links above
    1. For windows, you also need to download and install "Googles USB driver ZIP file" from <https://developer.android.com/studio/run/win-usb>
    2. For installation instructions, see <https://developer.android.com/studio/run/oem-usb#InstallingDriver>
3. Place the flasher as well as the CalyxOS image into the same folder.
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