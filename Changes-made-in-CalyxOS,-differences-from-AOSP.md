A quick, non comprehensive list of the changes from AOSP

Overview:
* Inline kernel building
*

Forked repos:

| Repo | Purpose |
|-|-|
| build | Build system changes |
| build/soong | Build system changes |
| bionic | Build fix with inline kernel build |
| device/common | Include avb with factory image |
| device/google/marlin | Pixel 1 & 1 XL |
| device/google/muskie | Pixel 2 (common) |
| device/google/taimen | Pixel 2 XL |
| device/google/wahoo | Pixel 2 & 2 XL (common) |
| frameworks/av | For Mi A2 |
| frameworks/base | microG support |
| hardware/qcom/audio | For Mi A2 |
| hardware/qcom/bootctrl | For Mi A2, TBD |
| hardware/qcom/display | For Mi A2 |
| hardware/qcom/gps | For Mi A2, TBD |
| hardware/qcom/media | For Mi A2 |
| hardware/qcom/msm8998 | For Mi A2 |

New repos:

| Repo | Purpose |
|-|-|
| manifest | The manifest, containing list of repos |
| device/qcom/sepolicy | For Mi A2 |
| device/xiaomi/jasmine  | Mi A2 |
| device/xiaomi/sdm660-common | Mi A2 (common) |
| external/ant-wireless/ant_native | For Mi A2, TBD |
| external/ant-wireless/antradio-library | For Mi A2, TBD |
| external/ant-wireless/ant_service | For Mi A2, TBD |
| kernel/google/marlin | Pixel 1 |
| kernel/google/wahoo | Pixel 2 |
| kernel/xiaomi/jasmine | Mi A2 |
| packages/apps/F-DroidPrivelegedExtension | For F-Droid |
| packages/apps/SetupWizard | The first run wizard |
| packages/apps/Updater | OTA Updater |
| packages/resources/devicesettings | For Mi A2 |
| prebuilts/calyx | Prebuilt apps |
| vendor/android-prepare-vendor | Pixel proprietaries |
| vendor/calyx | Calyx Vendor |
| vendor/calyx-tmp | Temporary Calyx vendor |
| vendor/qcom/opensource/audio | For Mi A2 |
| vendor/qcom/opensource/cryptfs_hw | For Mi A2 |
| vendor/qcom/opensource/dataservices | For Mi A2 |
| vendor/qcom/opensource/interfaces | For Mi A2 |
| calyxos.wiki | This wiki :smile:  |

Note:
* Repos marked as TBD might get removed in the future.
* A lot of the new repos are forked from LineageOS
* The repos marked "For Mi A2" will get further clarification later.