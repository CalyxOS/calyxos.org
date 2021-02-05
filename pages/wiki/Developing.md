---
title: Developing
---
## CalyxOS Development Process

To be expanded in the future and as we need to write down things.

### Testing OTA Updates
OTA Updates can be tested locally, too.

1. Point the Updater app to your local server, patches:
    * [vendor/calyx](../uploads/47ea06ef756e29e4d8038552ba82c3d7/0001-DO-NOT-MERGE-Use-local-OTA-server-for-testing.patch)
    * [packages/apps/Updater](../uploads/b7e33035a090aa3b4ed76d3b0f4a1194/0001-DO-NOT-MERGE-Allow-cleartext-traffic-for-local-OTA-t.patch)
1. Create a build and install it.
1. Clean things for a new build that will be accepted by the OTA updater
    * run `make installclean` (updates build timestamp)
    * Remove `out/build_number.txt` (allows for increase in build number)
    * re-run `source envsetup.sh`
1. `make otapackage`
1. Generate metadata file:
    * `vendor/calyx/scripts/generate_metadata.py $OUT/*-ota-*.zip`
1. Rename the metadata file, so it fakes a stable update channel
    * `mv taimen-testing taimen-stable`
1. Rename the OTA zip to the expected format:
    * `mv $OUT/${TARGET_PRODUCT}-ota-$BUILD_NUMBER.zip $OUT/${TARGET_PRODUCT#calyx_}-ota_update-$BUILD_NUMBER.zip`
1. Put the OTA zip and generated metadata file on the local server, the device should now wait for it to pull down the OTA.
    * `mv taimen-stable $OUT/${TARGET_PRODUCT#calyx_}-ota_update-$BUILD_NUMBER.zip server/`