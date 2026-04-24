---
title: Building CalyxOS's microG fork
nav_title: Build microG
redirect_from:
    - /contribute/build/microg/
    - /development/build/microg/
    - /docs/development/build/microg/
---

CalyxOS includes [microG](https://github.com/microG) by default. However, since it is an Android app built using the gradle build system, which the AOSP build system does not support, we build it separately and include a prebuilt APK for the OS build.

#### Preparation

```shell
cd ~/calyxos/android16-qpr2
cd external/microg/GmsCore
git fetch --tags
export JAVA_OPTS="-Xmx2048m"
```

You will need a `local.properties` configuration file for Mapbox and Positon API keys.

You can copy the `local.properties.example` file to `local.properties` and modify it with your own keys.

For development, you can simply put in dummy values like the ones in the example file, however that will break Maps inside apps and result in non functioning Positon location provider.

#### Build

```shell
./gradlew --no-daemon assembleMapboxDefaultRelease
./gradlew --no-daemon assembleDefaultRelease
```

#### Copy

```shell
cd ~/calyxos/android16-qpr2
cp external/microg/GmsCore/play-services-core/build/outputs/apk/mapboxDefault/release/play-services-core-mapbox-default-release.apk prebuilts/calyx/microg/
cp external/microg/GmsCore/vending-app/build/outputs/apk/default/release/vending-app-default-release-unsigned.apk prebuilts/calyx/microg/
```
