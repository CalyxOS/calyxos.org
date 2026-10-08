### Install USB drivers for Windows

Windows requires USB drivers in order for device-flasher to work.

<a class="btn" target="_new" href="https://developer.android.com/studio/run/win-usb">Download Google USB driver</a>

Open that page, click **Click here to download Google USB Driver ZIP file**, then accept the terms and conditions. Save the ZIP file to your host computer.

1. Put your Android device in [[fastboot]] mode.
2. Connect your Android device to your computer's USB port.
3. On the Windows computer, extract the downloaded Google USB driver ZIP file.
4. Right-click on the `Android_winusb.inf` file and hit install. Note: Install may show under "Show more options". 

You might also have missing drivers specific to your device that Windows may not have installed automatically, they are available through Windows Update.

1. Open **Windows Update** in **Settings**.
2. Click on **Check for updates**.
3. Once that's done, open **Advanced options**, and then **Optional updates**.

You may then see a section on **Optional drivers** where you may find Android/ADB/Fastboot drivers, make sure to select them and install them if they show up.
