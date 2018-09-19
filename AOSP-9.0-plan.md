This document is intended to set forward a plan for forking AOSP 9.0, and making any required changes.

## TODO items
- [ ] Inline kernel building
- [ ] android-prepare-vendor
- [ ] OTA Updates
- [ ] Default wallpaper, bootanimation
- [ ] (Temporary) Apps bundled with OS[^2]
- [ ] Build and sign scripts
- [ ] Branding

## List of forked repos with purpose
| aosp repo name | gitlab name | purpose |
|----------------|-------------|---------|
| platform/manifest | platform_manifest | The manifest |
| device/$foo | device_$foo | Device specific changes |

References:

[^2]: Will be via F-Droid in the future, see https://gitlab.com/fdroid/fdroidclient/issues/1546