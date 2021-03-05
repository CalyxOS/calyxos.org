---
title: Signing
---
TODO: Potentially make the instructions even more clearer, and less of a mess then they are right now

### Requirements
* Install zip, openssl

### Generate signing keys:
* `make otatools-package`
* Copy otatools.zip (common, $OUT/otatools.zip) to signing machine
* Unzip otatools.zip
* Copy `vendor/calyx/scripts/mkkeys.sh`, `vendor/calyx/scripts/mkkey.sh`, `development/tools/make_key` from android tree to extracted otatools folder, maintaining the original folder structure
* Run `./vendor/calyx/scripts/mkkeys.sh` to create the keys. Don't forget to copy generated `verity.x509.pem` to `kernel/xiaomi/jasmine_sprout/certs/` before building for jasmine_sprout

### Signing:
* Build your device(s) normally
* `make target-files-package otatools-package`
* Copy otatools.zip (common, $OUT/otatools.zip) and the target-files-package ($OUT/obj/PACKAGING/target_files_intermediates/calyx_$device-target_files-$BUILD_NUMBER.zip) for each device to signing machine
* `export BUILD_NUMBER=` (example build number: 2021.03.05.17)
* Unzip otatools.zip, run `./vendor/calyx/scripts/release.sh ${device} calyx_${device}-target_files-${BUILD_NUMBER}.zip`
* Generate server metadata with `./vendor/calyx/scripts/generate_metadata.py out/release-${device}-${BUILD_NUMBER}/${device}-ota_update_${BUILD_NUMBER}.zip`
Optional:
* Generate incremental zips by running `./vendor/calyx/scripts/generate_delta.sh ${device} ${OLD_BUILD_NUMBER} ${BUILD_NUMBER}`

Notes:
* Keys are currently common amongst devices, can be made per device if needed. Will depend on future direction with HSM and their capacity.
* The signing process can also be run on the same host building, using the same scripts.

References:
* https://source.android.com/devices/tech/ota/sign_builds
