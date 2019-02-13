# No longer current

* Didn't have that much info here either way

General info on the Mi A2

Launch version: Oreo 8.1

Current version: Pie 9.0

A/B: Yes

Treble: Yes

AVB 2.0: NO (vbmeta present, avb_custom_key partition present as well), but unused.

Unlock bootloader: fastboot flashing unlock; fastboot flashing unlock_critical

Recovery: https://androidfilehost.com/?fid=11410932744536984291 (can fastboot boot twrp.img)

Stock OTAs: https://forum.xda-developers.com/mi-a2/how-to/ota-v9-6-5-0-odimife-t3823445
vbmeta not present in stock OTAs, as it's not used at all

Note:
* To build a fully working signed build for these, one needs to enable verity (but not avb), and also build a disabled vbmeta image (like you would for a gsi - `BOARD_BUILD_DISABLED_VBMETAIMAGE := true`) - This seems optional