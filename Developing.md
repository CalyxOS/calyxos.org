## CalyxOS Development Process

To be expanded in the future and as we need to write down things.

### Testing OTA Updates
OTA Updates can be tested locally too.

1. Point the Updater app to your local server, patches: [vendor/calyx](uploads/47ea06ef756e29e4d8038552ba82c3d7/0001-DO-NOT-MERGE-Use-local-OTA-server-for-testing.patch) [packages/apps/Updater](uploads/b7e33035a090aa3b4ed76d3b0f4a1194/0001-DO-NOT-MERGE-Allow-cleartext-traffic-for-local-OTA-t.patch)
2. Create a build and install it.
3. Remove out/build_number.text, re run `source envsetup.sh`, and create the build again. Shouldn't take long since all that changed was the build number.
4. `make otapackage`
5. `vendor/calyx/scripts/generate_metadata.py $OUT/*-ota-*.zip`
6. Put the OTA zip and generated metadata file on the local server, the device should now pull down the OTA.