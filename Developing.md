## CalyxOS Development Process

To be expanded in the future and as we need to write down things.

### Testing OTA Updates
OTA Updates can be tested locally, too.

1. Point the Updater app to your local server, patches:
    * [vendor/calyx](uploads/47ea06ef756e29e4d8038552ba82c3d7/0001-DO-NOT-MERGE-Use-local-OTA-server-for-testing.patch)
    * [packages/apps/Updater](uploads/b7e33035a090aa3b4ed76d3b0f4a1194/0001-DO-NOT-MERGE-Allow-cleartext-traffic-for-local-OTA-t.patch)
1. Create a build and install it.
1. Clean things for a new build that will be accepted by the OTA updater
    * run `make cleaninstall` (updates build timestamp)
    * Remove `out/build_number.text` (allows for increase in build number)
    * re-run `source envsetup.sh`
1. `make otapackage`
1. `vendor/calyx/scripts/generate_metadata.py $OUT/*-ota-*.zip`
1. Put the OTA zip and generated metadata file on the local server, the device should now wait for it to pull down the OTA.