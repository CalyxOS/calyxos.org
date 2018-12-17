Signing the builds offline, preferably using a yubikey / nitrokey or a hsm as appropriate.

##### TODOs
* Figure out what hardware can be used (e.g. can the yubikey 4c be used?)
* Figure out the code changes needed to the AOSP releasetools (see if anyone else has done it while we're at it)
* Document the changes below
* Differences between signing the apks and the builds (system/vendor/boot verity/avb)

### Hardware
#### Yubikey 4C Nano (cdesai)
* Supports smartcard (PIV)


##### Useful links
* https://guardianproject.info/2014/03/28/security-in-a-thumb-drive-the-promise-and-pain-of-hardware-security-modules-take-one/