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
| Pixel 9a | tegu | B23527253F7C37FC4F165A99F7B61BB54D917B11F50C3C7EBDF6A153DF84F30B |
| Pixel 9 Pro Fold | comet | 541B24EF3725A0D77A5F717E23DFD409794774DB989F16C2051C4BB69F04665C |
| Pixel 9 Pro XL | komodo | A013DE964C04255353BC923F800EFD3FB1F1714C34FCE7DCFEC1D810C4C5B1A5 |
| Pixel 9 Pro | caiman | C43BBECE2EB6DFA22E61ADD7AFFAF20B0BE0960F1C20B32EC011BEEF2CCB74CA |
| Pixel 9 | tokay | 7A60257FE47A55BAEEB832CE91DC84C022918C93D5C175A1377B4B6A37062E11 |
| Pixel 8a | akita | 542C5B17D34154C0F1C835B975C6E7CACC6D3386AFA13C058313F6759EFCA582 |
| Pixel 8 Pro | husky | EE913AD5475B005E001477565A50133F9BD88C36F102856163E91B0013F88FF0 | 
| Pixel 8 | shiba | 932C98FE4CD91CED2D6FC78FBF2D9A14E1CD72FB29E5FE521A2A8CD39F0AC8D1 |
| Pixel Fold | felix | BDE8E292B89515EA5AF4C19C9CAD35E9C986031001482E6E8AA6174BC74B30D8 |
| Pixel Tablet | tangorpro | 331E91B2952E9BD424214DA468F392777054AE6A10F8F93419C786C816AF58A4 |
| Pixel 7a | lynx | 2DD5B191462FD582DA828182B66AAFEBA4368FEF23A2D51D97DD99ECD2EC476C |
| Pixel 7 Pro | cheetah | 167E73DD8B79544663F3A2B3E686B44A1BA6A8501C2C30978E3BAD062802E418 |
| Pixel 7 | panther | ECFD81C0C20A73BB9C3FF3DD3E1E3214FF3022BC33AB81422BC9977AF053EC0B |
| Pixel 6a | bluejay | 62ECCB5C72DF58D09ECD63CAF1EF6BBF39AD394EA2DF9BB6F7885FD3A5860416 |
| Pixel 6 Pro | raven | B8ACAEA1E8B8B992DE333F63C622E4541A0FF4D753B9513D9E6CDCF7E734E9B8 |
| Pixel 6 | oriole | 1E855DFEA9D3FAF45275E9018800CEF7EFE48188999B046CA7B7C9D4DD1984BD |
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