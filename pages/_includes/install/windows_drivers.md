### Install USB drivers for Windows

Windows requires special USB drivers in order for device-flasher to work.

<a class="btn" target="_new" href="https://developer.android.com/studio/run/win-usb">Download Google USB Driver</a>

Open that page, click **Click here to download Google USB Driver ZIP file**, then accept the terms and conditions. Save the ZIP file to your host computer.

1. Put your Android device in [[fastboot]] mode.
2. Connect your Android device to your computer's USB port.
3. On the Windows computer, open the **Device Manager**<br>
   (windows key + X, select Device Manager from the list)
4. Expand the list item **Other Devices**<br>
   Not there? Make sure the Android device is plugged in and in [[fastboot]] mode.
5. Right-click the name of the device you connected, and then select **Update Driver**.
6. In the Hardware Update wizard, select **Browse my computer for driver software** and click **Next**.
7. Click **Browse** and then locate the USB driver ZIP file.
8. Click **Next** to install the driver.

For more information, see [Android developer site](https://developer.android.com/studio/run/oem-usb#InstallingDriver).
