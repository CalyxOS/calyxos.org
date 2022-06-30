### Linux packages

The device-flasher program needs certain **udev** rules installed. The device-flasher will set these rules up for you, but it may ask for your sudo password to do so. Alternately, you can install one of the following packages to correctly set the udev rules in advance.

Debian, Ubuntu, & derivatives:

```
sudo apt update
sudo apt install android-sdk-platform-tools-common
```

Fedora & derivatives:

```
sudo dnf install android-tools
```

Arch Linux:

```
sudo pacman -S android-udev
```

openSUSE:

```
sudo zypper install android-udev-rules
```

