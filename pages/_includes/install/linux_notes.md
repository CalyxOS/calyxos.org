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

Currently, there are issues with **udev** rules on Fedora, you may need to run `device-flasher.linux` using `sudo` later on the install process.

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

```nix
services.udev.packages = [
  pkgs.android-udev-rules
];
```

Create a `shell.nix` for temporary FHS-compatible shell:

```nix
{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
      name = "calyxos-device-flashing";
}).env
```

Enter it with `nix-shell`.
