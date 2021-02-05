---
title: Signing
---
TODO: Potentially make the instructions even more clearer, and less of a mess then they are right now

Signing on a separate machine:
* If keys aren't already generated, use `./vendor/calyx/scripts/mkkeys.sh` to create them. Don't forget to copy verity_user.der.x509 to the kernel source before building, for marlin/sailfish/jasmine.
* Install zip, openssl
* Build normally
* `make target-files-package otatools-package`
* Copy otatools.zip (common, $OUT/otatools.zip) and the target-files-package ($OUT/obj/PACKAGING/target_files_intermediates/calyx_$device-target_files-$BUILD_NUMBER.zip) for each device to signing machine
* `export BUILD_NUMBER=` (example build number: 2018.12.14.17)
* Unzip otatools.zip, run `./vendor/calyx/scripts/release.sh ${device} calyx_${device}-target_files-${BUILD_NUMBER}.zip`
* Generate server metadata with `./vendor/calyx/scripts/generate_metadata.py out/release-${device}-${BUILD_NUMBER}/${device}-ota_update_${BUILD_NUMBER}.zip`
Optional:
* Generate incremental zips by running `./vendor/calyx/scripts/generate_delta.sh ${device} ${OLD_BUILD_NUMBER} ${BUILD_NUMBER}`

Note:
* keys are currently common amongst devices, can be made per device if needed. Will depend on future direction with HSM and their capacity.
* The signing process can also be run on the same host building, using the same scripts.

References:
* https://source.android.com/devices/tech/ota/sign_builds