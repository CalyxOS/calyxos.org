### Linux packages

The device-flasher program needs certain **udev** rules installed. You can either run device-flasher as root, or install one of the following packages.

Debian & Ubuntu:

```
sudo apt update
sudo apt install android-sdk-platform-tools-common
```

Fedora:

```
sudo dnf install android-tools
```

ArchLinux:

```
sudo pacman -Sy
sudo pacman -S android-udev
```

If you do not install one of these packages, remember to run device-flasher with root permissions.
