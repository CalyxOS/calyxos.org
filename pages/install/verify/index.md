---
title: Verifying CalyxOS builds
toc: true
redirect_from: /get/verify/
---

There are two possible stages of verification:

- File verification: verify the downloaded image before flashing to ensure you have the correct untampered file
- Boot verification: verify the installed build on the device after installing, possible at each boot

---

## File verification

Currently, factory images from version 7.0.0.0 onwards are verified using SHA256 checksums only.

#### SHA256 checksums

SHA256 checksums are available for all factory images and over-the-air (OTA) full and incremental updates. You can append `.sha256sum` to any download URL to retrieve the checksum directly, e.g. <https://release.calyxos.org/factory/tegu/16/tegu-factory-260720100.zip.sha256sum>

Download the factory image from [Get CalyxOS](https://calyxos.org/install/), then run the appropriate command below and confirm the hash matches what's shown on the device's install page.

##### Linux

```shell
sha256sum tegu-factory-260720100.zip
# tegu is Pixel 9a, replace with your device
```

Expected output:

```shell
7c2e92d76f09ce953df6b059f652c96e10e783513a32a8d93fd3eb7cb9e2b24b  tegu-factory-260720100.zip
```

##### macOS

```shell
shasum -a 256 tegu-factory-260720100.zip
# tegu is Pixel 9a, replace with your device
```

Expected output:

```shell
7c2e92d76f09ce953df6b059f652c96e10e783513a32a8d93fd3eb7cb9e2b24b  tegu-factory-260720100.zip
```

##### Windows

```shell
certUtil -hashfile tegu-factory-260720100.zip SHA256
# tegu is Pixel 9a, replace with your device
```

Expected output:

```shell
SHA256 hash of tegu-factory-260720100.zip:
7c2e92d76f09ce953df6b059f652c96e10e783513a32a8d93fd3eb7cb9e2b24b
CertUtil: -hashfile command completed successfully.
```

---

## Boot verification

After flashing CalyxOS, you can verify the installed build on the device using the **Android Verified Boot (AVB) fingerprint**, which is displayed on screen during each power on. Confirm the fingerprint shown matches the expected value for your device in the table below.

| Device | Codename | AVB Boot Fingerprint |
|--------|----------|----------------------|
| Fairphone 5 | FP5 | AC125959F746CEDCCDD0C9737E6D57503C5648191237A2E395DB3E3433F930B5 |
| Fairphone 4 | FP4 | BE58B05164DC19F6C2BC860F0334153D2A989949B4EA42CDB66792D2F626AB9E |
| moto g 5G - 2024 | fogo | 0x9AFEBA34 |
| moto g84 5G | bangkk | 0x701182C7 |
| moto g34 5G and g45 5G | fogos | 0x4CB8BA16 |
| moto g52 | rhode | 0x0ACBC290 |
| moto g42 | hawao | 0x79D64BB8 |
| moto g32 | devon | 0xEC553410 |
| Pixel 9a | tegu | b23527253f7c37fc4f165a99f7b61bb54d917b11f50c3c7ebdf6a153df84f30b |
| Pixel 9 Pro Fold | comet | 541b24ef3725a0d77a5f717e23dfd409794774db989f16c2051c4bb69f04665c |
| Pixel 9 Pro XL | komodo | a013de964c04255353bc923f800efd3fb1f1714c34fce7dcfec1d810c4c5b1a5 |
| Pixel 9 Pro | caiman | c43bbece2eb6dfa22e61add7affaf20b0be0960f1c20b32ec011beef2ccb74ca |
| Pixel 9 | tokay | 7a60257fe47a55baeeb832ce91dc84c022918c93d5c175a1377b4b6a37062e11 |
| Pixel 8a | akita | 542c5b17d34154c0f1c835b975c6e7cacc6d3386afa13c058313f6759efca582 |
| Pixel 8 Pro | husky | ee913ad5475b005e001477565a50133f9bd88c36f102856163e91b0013f88ff0 |
| Pixel 8 | shiba | 932c98fe4cd91ced2d6fc78fbf2d9a14e1cd72fb29e5fe521a2a8cd39f0ac8d1 |
| Pixel Fold | felix | bde8e292b89515ea5af4c19c9cad35e9c986031001482e6e8aa6174bc74b30d8 |
| Pixel Tablet | tangorpro | 331e91b2952e9bd424214da468f392777054ae6a10f8f93419c786c816af58a4 |
| Pixel 7a | lynx | 2dd5b191462fd582da828182b66aafeba4368fef23a2d51d97dd99ecd2ec476c |
| Pixel 7 Pro | cheetah | 167e73dd8b79544663f3a2b3e686b44a1ba6a8501c2c30978e3bad062802e418 |
| Pixel 7 | panther | ecfd81c0c20a73bb9c3ff3dd3e1e3214ff3022bc33ab81422bc9977af053ec0b |
| Pixel 6a | bluejay | 62eccb5c72df58d09ecd63caf1ef6bbf39ad394ea2df9bb6f7885fd3a5860416 |
| Pixel 6 Pro | raven | b8acaea1e8b8b992de333f63c622e4541a0ff4d753b9513d9e6cdcf7e734e9b8 |
| Pixel 6 | oriole | 1e855dfea9d3faf45275e9018800cef7efe48188999b046ca7b7c9d4dd1984bd |
| Pixel 5a (5G) | barbet | D4E69324 |
| Pixel 4a (5G) | bramble | 3582DABB |
| Pixel 5 | redfin | ED180E99 |
| SHIFTphone 8 | otter | No warning screen |

---

## Verifying archive images

Factory images before version 6.10.20 can be verified with minisign, GPG, and SHA256 checksums.

#### Minisign

Factory images from July 2021 - July 2025 are signed using [minisign](https://jedisct1.github.io/minisign/).

**Install minisign:**

- **Linux:**
  - Arch Linux: `sudo pacman -S minisign`
  - Fedora: `sudo dnf install minisign`
  - Ubuntu: `sudo add-apt-repository ppa:savoury1/minisign && sudo apt update && sudo apt install minisign`
  - Debian: `sudo apt install minisign`
  - Others: See <https://github.com/jedisct1/minisign#compilation--installation>
- **macOS:**
  - Official binary: <https://github.com/jedisct1/minisign/releases/download/0.11/minisign-0.11-macos.zip>
  - Homebrew: `brew install minisign`
- **Windows:**
  - Official binary: <https://github.com/jedisct1/minisign/releases/download/0.11/minisign-0.11-win64.zip>
  - Chocolatey: `choco install minisign`
  - Scoop: `scoop install minisign`

**Verify:**

1. Download the factory image and signature files from our [image archive](https://calyxos.org/get/factory/)
2. Download the public key: [minisign.pub](https://release.calyxinstitute.org/minisign.pub)
3. Place all 3 files in the same folder and run:

```shell
minisign -Vm akita-factory-24509000.zip -p minisign.pub
# akita is Pixel 8a, replace with your device
```

Expected output (comment may differ per release):

```shell
Signature and comment signature verified
Trusted comment: CalyxOS 5.9.0 - July 2024 Security update
```

#### GPG (additional verification)

The minisign public key has also been GPG-signed by [Nicholas Merrill](https://twitter.com/nickcalyx).

- OpenPGP Fingerprint: `BC2C B9C4 993C 086F FDAD  8D20 5905 C9C7 4693 488B`

1. Download the public key: [minisign.pub](https://release.calyxinstitute.org/minisign.pub)
2. Download the signature: [minisign.pub.sig](https://release.calyxinstitute.org/minisign.pub.sig)
3. Place both files in the same folder and run:

```shell
gpg --keyserver keys.openpgp.org --recv-keys BC2CB9C4993C086FFDAD8D205905C9C74693488B
gpg --verify minisign.pub.sig minisign.pub
```

Expected output:

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

#### SHA256 checksums

SHA256 checksums are also available for all older builds. See the [instructions above](#sha256-checksums); the process is the same.

---

### Mirrors

The minisign signatures and SHA256 checksums are all also stored in a git repository mirrored to multiple places:

1. <https://gitlab.com/CalyxOS/releases>
2. <https://github.com/CalyxOS/releases>

Hint: You can press `t` on these pages to quick-jump to a filename (e.g. `tegu-factory-260720100.zip`, `akita-factory-24509000`).
