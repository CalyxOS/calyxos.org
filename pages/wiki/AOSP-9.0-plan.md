---
title: AOSP-9.0-plan
---
# No longer current

This document is intended to set forward a plan for forking AOSP 9.0, and making any required changes.

## TODO items
- [x] Inline kernel building
- [x] android-prepare-vendor
- [x] OTA Updates
- [x] Default wallpaper, bootanimation
- [x] (Temporary) Apps bundled with OS[^1]
- [x] Build and sign scripts
- [ ] Branding?

## List of forked repos with purpose (no longer up to date)
| aosp/other repo name | gitlab name | purpose |
|----------------|-------------|---------|
| platform/manifest | platform_manifest | The manifest |
| platform/build | platform_build | Build system |
| device/$foo | device_$foo | Device specific changes |
| kernel/$device | kernel_$device | Inline kernel build + other changes |
| android-prepare-vendor[^2] | vendor_android-prepare-vendor | Blob scripts |

References:

- https://source.android.com/setup/start/build-numbers.html#source-code-tags-and-builds

[^1]: Will be via F-Droid in the future, see https://gitlab.com/fdroid/fdroidclient/issues/1546
[^2]: https://github.com/anestisb/android-prepare-vendor