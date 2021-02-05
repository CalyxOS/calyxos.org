---
title: Offline-signing
---
Signing the builds offline, preferably using a yubikey / nitrokey or a hsm as appropriate.

----------------------------------------------------------------------------------------------------------------------------------------------------------------

The below text is for signing using smartcards.

TL;DR: Doable, some stuff already has external hooks, some might not but could easily be added.

##### TODOs
- [x] Figure out what hardware can be used (e.g. can the yubikey 4c be used? - nope, need a hsm)
- [x] Figure out the code changes needed to the AOSP releasetools (see if anyone else has done it while we're at it) - halfway there
- [x] Document the changes below
- [x] Differences between signing the apks and the builds (system/vendor/boot verity/avb)

### Hardware
#### Yubikey 4C Nano (cdesai)
* Supports smartcard (PIV)
* Has 24 slots to store various keys

What I've done so far:
* Generate private pem files from the pk8 files (`openssl pkcs8 -in ${i}.pk8 -inform DER -out ${i}.pem`)
* Import the private keys and certs to yubikey, 4 slots available (`yubico-piv-tool -s $slot -a import-key -i $file` - and matching import-certificate) 
  - 9a = Certificate for PIV Authentication = releasekey - works with jarsigner and apksigner
  - 9c = Certificate for Digital Signature = platform - doesn't work
  - 9d = Certificate for Key Management = media - doesn't work
  - 9e = Certificate for Card Authentication = shared - works with jarsigner and apksigner
* Slots 82-95 can also be used to store keys but I can't find a way to access them.
* Use the yubikey signing instructions with the right alias to sign with the desired key. 

### Signing process, keys used
#### Keys:
##### {media,shared,platform,releasekey}.pk8,x509.pem
* Used for signing apps, same process as app signing - common to all devices
##### verity.pk8,x509.pem verity_key.pub
* Verified boot - Pixel 1, Mi A2
##### avb.pem, avb_pkmd.bin
* Android Verified Boot 2.0 - Pixel 2

#### Steps
The various steps during the signing process.
Note: Only the steps dealing with the actual signing process are listed here.
##### common.py:SignFile (used to sign zip/jar/apk)
* extra_signapk_args could be used to pass arguments invoking hsm

  Modifications needed:
  * This invokes signapk, which does support -providerClass but not -providerArg. It also assumes having public and private keys on the file system, so that code would need to be refactored.
  * We can specify a custom signapk.jar, I wonder if we should just fork the AOSP version instead of trying to modify it in place.
  * The good news is that signapk does most of the apk signing through the library apksig-core, which is what's in apksigner, which does fully support using a yubikey. (See geoffreymetais blogpost below)
##### verity - java, python
* boot_signer: uses verity.pk8,x509.pem with boot.img
* system/extras/verity/build_verity_metadata.py used with the other images (system/vendor)
* Uses standard java APIs, so this should probably be a drop-in

  Modifications needed:
  * Everything in system/extras/verity is hardcoded to deal with private key files.
  * Would need to refactor that to deal with our PKCS#11 keys.
  * Good news is, reading the java security docs does seem to imply that most of the same methods can be

    used, and they can deal with private keys which are just java software keys and not actually present in files (but present on the token).
  * Need to test the above in theory

##### avbtool make_vbmeta_image - C++
* uses avb.pem to create the vbmeta image
* Also used: add_hash_footer with all the other partitions (system/vendor/boot/dtbo)
* --signing_helper can be used (see external/avb/README.md) - would need development of a small script to communicate

  Modifications needed:
  * A few lines in build/tools/releasetools to call the external signing helper.
  * Not actually a modification but actually writing the signing helper.
  * Unsure if signing_helper actually works, will need to test.

##### Useful links
* https://source.android.com/devices/tech/ota/sign_builds
* https://guardianproject.info/2014/03/28/security-in-a-thumb-drive-the-promise-and-pain-of-hardware-security-modules-take-one/
* https://gitlab.com/fdroid/fdroidserver/commit/3829d37d341433c9e30c9069928e3fe6b4d824c1
* https://developers.yubico.com/PIV/Guides/Android_code_signing.html
* https://guardianproject.info/2017/12/18/building-a-signing-server/
* https://developers.yubico.com/PIV/Introduction/Certificate_slots.html
* https://developers.yubico.com/PIV/Introduction/YubiKey_and_PIV.html
* https://utcc.utoronto.ca/~cks/space/blog/sysadmin/Yubikey4ForSSHKeys
* https://geoffreymetais.github.io/code/key-signing/
* https://raymii.org/s/articles/Decrypt_NitroKey_HSM_or_SmartCard-HSM_private_keys.html
* https://github.com/OpenSC/OpenSC/issues/847
* https://docs.oracle.com/javase/7/docs/technotes/guides/security/p11guide.html