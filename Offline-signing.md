Signing the builds offline, preferably using a yubikey / nitrokey or a hsm as appropriate.

##### TODOs
* Figure out what hardware can be used (e.g. can the yubikey 4c be used?)
* Figure out the code changes needed to the AOSP releasetools (see if anyone else has done it while we're at it)
* Document the changes below
* Differences between signing the apks and the builds (system/vendor/boot verity/avb)

### Hardware
#### Yubikey 4C Nano (cdesai)
* Supports smartcard (PIV)

### Signing process, keys used
#### Keys:
##### {media,shared,platform,releasekey}.pk8,x509.pem
* Used for signing apps, same process as app signing
##### verity.pk8,x509.pem verity_key.pub
* Verified boot
##### avb.pem, avb_pkmd.bin
* Android Verified Boot 2.0

#### Steps
The various steps during the signing process.
Note: Only the steps dealing with the actual signing process are listed here.
#####

##### Useful links
* https://guardianproject.info/2014/03/28/security-in-a-thumb-drive-the-promise-and-pain-of-hardware-security-modules-take-one/