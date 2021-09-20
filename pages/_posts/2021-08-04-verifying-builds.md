---
title: Verifying CalyxOS builds
date: 2021-08-04
---

The official CalyxOS builds are signed with our private keys.
Over-the-air (OTA) updates are also signed with the same keys, and once you install the OS, only updates signed with the same key can be installed.

The builds are made from signed git tags.

Starting July 2021, all CalyxOS factory images will be signed using [minisign](https://jedisct1.github.io/minisign/)

Why minisign? It's dead simple, easy to use, works well with large files, and can be easily integrated with `device-flasher` (which will be done in a future update)

Signatures:

You can now see a new Signature column next to the download link at [[get]]

You need to download both the factory zip, and the signature file (.minisig)
You'll also need the public key, [minisign.pub](https://release.calyxinstitute.org/minisign.pub)

Then, the signature can be verified by running:
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

For more detailed instructions, see [[verify]]
