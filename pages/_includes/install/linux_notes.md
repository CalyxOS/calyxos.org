### Linux packages

The device-flasher program needs certain **udev** rules installed. You should install one of the following packages to correctly set the udev rules.

**Debian, Ubuntu, & derivatives:**

```
sudo apt update
sudo apt install android-sdk-platform-tools-common
```

**Fedora & derivatives:**

```
sudo dnf install android-tools
```

Currently, there are issues with **udev** rules on Fedora, you may need to either run `device-flasher.linux` using `sudo` or [manually install udev-rules from a third-party resource.](https://github.com/M0Rf30/android-udev-rules?tab=readme-ov-file#using-the-automatic-install-script)

If you except on using tools like fastboot/adb on the future, installing them probably makes more sense to you. Beware this is a third-party resource of which we do not control.

**Arch Linux:**

```
sudo pacman -S android-udev
```

**openSUSE:**

```
sudo zypper install android-udev-rules
```

**NixOS:**

Add the following to `/etc/nixos/configuration.nix` and `sudo nixos-rebuild switch`:

```
services.udev.packages = [
  pkgs.android-udev-rules
];
```

Create a `shell.nix` for temporary FHS-compatible shell:

```
{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
      name = "calyxos-device-flashing";
}).env
```

Enter it with `nix-shell`.
