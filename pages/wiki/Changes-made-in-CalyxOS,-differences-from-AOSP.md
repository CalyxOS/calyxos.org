---
title: Changes-made-in-CalyxOS,-differences-from-AOSP
---
A quick, non comprehensive list of the changes from AOSP

Overview:
* Inline kernel building
*

Forked AOSP repos:

| Repo | Purpose |
|-|-|
| manifest | The manifest, containing list of repos |
| build | Build system changes |
| build/soong | Build system changes |
| bionic | Build fix with inline kernel build |
| device/common | Include avb with factory image |
| device/google/marlin | Pixel 1 & 1 XL |
| device/google/muskie | Pixel 2 (common) |
| device/google/taimen | Pixel 2 XL |
| device/google/wahoo | Pixel 2 & 2 XL (common) |
| frameworks/av | For Mi A2, TBD |
| frameworks/base | microG support |
| hardware/qcom/audio | For Mi A2, allow building |
| hardware/qcom/bootctrl | For Mi A2, TBD |
| hardware/qcom/display | For Mi A2, allow building |
| hardware/qcom/gps | For Mi A2, TBD |
| hardware/qcom/media | For Mi A2, allow building |
| hardware/qcom/msm8998 | For Mi A2, allow building |
| kernel/google/marlin | Pixel 1 |
| kernel/google/wahoo | Pixel 2 |

New repos:

| Repo | Purpose | Upstream |
|-|-|-|
| device/qcom/sepolicy | For Mi A2 | LineageOS |
| device/xiaomi/jasmine  | Mi A2 | xiaomi-sdm660 |
| device/xiaomi/sdm660-common | Mi A2 (common) | xiaomi-sdm660 |
| external/ant-wireless/ant_native | For Mi A2, TBD | LineageOS |
| external/ant-wireless/antradio-library | For Mi A2, TBD | LineageOS |
| external/ant-wireless/ant_service | For Mi A2, TBD | LineageOS |
| kernel/xiaomi/jasmine | Mi A2 | xiaomi-sdm660 |
| packages/apps/F-DroidPrivelegedExtension | For F-Droid | fdroid |
| packages/apps/SetupWizard | The first run wizard | LineageOS |
| packages/apps/Updater | OTA Updater | AndroidHardening |
| packages/resources/devicesettings | For Mi A2 | LineageOS |
| prebuilts/calyx | Prebuilt apps | N/A |
| vendor/android-prepare-vendor | Pixel proprietaries | anestisb
| vendor/calyx | Calyx Vendor | N/A |
| vendor/calyx-tmp | Temporary Calyx vendor | N/A |
| vendor/qcom/opensource/audio | For Mi A2 | LineageOS |
| vendor/qcom/opensource/cryptfs_hw | For Mi A2 | LineageOS |
| vendor/qcom/opensource/dataservices | For Mi A2 | LineageOS |
| vendor/qcom/opensource/interfaces | For Mi A2 | LineageOS |
| calyxos.wiki | This wiki :smile:  | N/A |

Note:
* Repos marked as TBD might get removed in the future.
* A lot of the new repos are forked from LineageOS
* The repos marked "For Mi A2" will get further clarification later.