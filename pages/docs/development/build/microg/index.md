---
title: Building CalyxOS's microG fork
nav_title: Build microG
redirect_from:
	- /contribute/build/microg/
	- /development/build/microg/
---

CalyxOS includes [microG](https://github.com/microG) by default. However, since it is an Android app built using the gradle build system, which the AOSP build system does not support, we build it separately and include a prebuilt APK for the OS build.

#### Preparation

{% highlight shell %}
cd ~/calyxos/android11-qpr1
cd external/microg/GmsCore
git fetch --tags
export JAVA_OPTS="-Xmx2048m"
echo 'mapbox.key=apikey' > local.properties
{% endhighlight %}

In our builds we fail if there is no Mapbox API key to avoid shipping a build without it, as that will break Maps inside apps.

For development, you can simply put in a dummy value like the one above.

#### Build

{% highlight shell %}
./gradlew --no-daemon build
{% endhighlight %}

#### Copy

We use the variant with mapbox and with nearby.

You can copy `play-services-core-withMapbox-withNearby-release-unsigned.apk` to `prebuilts/calyx/microg/GmsCore/GmsCore.apk` for it to be included in the OS build.