---
title: Verifying CalyxOS builds
toc: true
---

### Factory images
* Factory images starting from July 2021 are signed using
[minisign](https://jedisct1.github.io/minisign/)
* Linux:
  * Arch Linux: `sudo pacman -S minisign`
  * Fedora: `sudo dnf install minisign`
  * Ubuntu: `sudo add-apt-repository ppa:dysfunctionalprogramming/minisign && sudo apt update && sudo apt install minisign`
  * Others: See <https://github.com/jedisct1/minisign#compilation--installation>
* macOS:
  * Official binary: <https://github.com/jedisct1/minisign/releases/download/0.9/minisign-osx.zip>
  * Homebrew: `brew install minisign`
* Windows:
  * Official binary: <https://github.com/jedisct1/minisign/releases/download/0.9/minisign-win32.zip>

#### Verification
* Download the factory image and signature files from [[get]]
* Download the public key, [minisign.pub](https://release.calyxinstitute.org/minisign.pub)
* Place all 3 files in the same folder, and then run:

```shell
minisign -Vm sunfish-factory-2.7.1.zip -p minisign.pub
# sunfish is Pixel 4a, replace with your device
```

It should output:
```shell
Signature and comment signature verified
Trusted comment: CalyxOS 2.7.1 - July 2021
```

<br>

##### Additional verification
* The minisign public key has been GPG signed by [Nicholas Merrill](https://twitter.com/nickcalyx)
* OpenPGP Fingerprint: `BC2C B9C4 993C 086F FDAD  8D20 5905 C9C7 4693 488B`
* Download the public key, [minisign.pub](https://release.calyxinstitute.org/minisign.pub)
* Download the signature, [minisign.pub.sig](https://release.calyxinstitute.org/minisign.pub.sig)
* Place both files in the same folder, and then run:

```shell
gpg --verify minisign.pub.sig minisign.pub
```

It should output:
```shell
gpg: Signature made Sat 10 Jul 2021 05:15:55 AM IST
gpg:                using RSA key BC2CB9C4993C086FFDAD8D205905C9C74693488B
gpg: checking the trustdb
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: depth: 0  valid:   2  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 2u
gpg: Good signature from "Nicholas Merrill <nick@calyx.com>" [unknown]
gpg:                 aka "Nicholas Merrill <nick@calyx.net>" [unknown]
gpg:                 aka "Nicholas Merrill <nick@calyxinstitute.org>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: BC2C B9C4 993C 086F FDAD  8D20 5905 C9C7 4693 488B
```

### Checksums
* SHA256 checksums are available for all factory images and OTA updates.
* You can run the below command and make sure the hash matches what's shown on [[get]] or [[ota]]
* You can also simply append `.sha256sum` to the download URL for any file to get them, e.g. <https://release.calyxinstitute.org/sunfish-factory-2.7.1.zip.sha256sum>

##### Linux
```shell
sha256sum sunfish-factory-2.7.1.zip
# sunfish is Pixel 4a, replace with your device
```

It should output:
```shell
dddb62c9b68bf68e210db2e05181b55baf50a509f4533ea69409bdbf5c5009b9  sunfish-factory-2.7.1.zip
```

<br>

##### macOS
```shell
shasum -a 256 sunfish-factory-2.7.1.zip
# sunfish is Pixel 4a, replace with your device
```

It should output:
```shell
dddb62c9b68bf68e210db2e05181b55baf50a509f4533ea69409bdbf5c5009b9  sunfish-factory-2.7.1.zip
```

<br>

##### Windows
```shell
certUtil -hashfile sunfish-factory-2.7.1.zip 256
# sunfish is Pixel 4a, replace with your device
```

It should output:
```shell
SHA256 hash of sunfish-factory-2.7.1.zip:
dddb62c9b68bf68e210db2e05181b55baf50a509f4533ea69409bdbf5c5009b9
CertUtil: -hashfile command completed successfully.
```

<br>

### Mirrors
* The public key, signatures, and sha256 checksums are also stored in a git repository which is mirrored to multiple places.

  1. <https://gitlab.com/CalyxOS/releases>
  2. <https://github.com/CalyxOS/releases>
  3. <https://0xacab.org/calyx/os/releases>

Hint: You can press `t` on these pages to quick jump to a filename (e.g. `sunfish-factory-2.7.1`)
