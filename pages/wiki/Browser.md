---
title: Browser
---
## Currently used

### Chromium
System Webview: Yes

Links:
* https://chromium.googlesource.com/chromium/src/+/master/docs/android_build_instructions.md
* https://www.chromium.org/developers/how-tos/build-instructions-android-webview
* https://chromiumdash.appspot.com/releases?platform=Android
* https://www.chromium.org/developers/how-tos/get-the-code/working-with-release-branches

args.gn:
```
target_cpu = "arm64"
android_channel = "stable"
is_clang = true

target_os="android"
is_debug=false
is_official_build=true
is_chrome_branded=false
use_official_google_api_keys=false
ffmpeg_branding="Chrome"
proprietary_codecs=true
enable_remoting=true
is_component_build=false
symbol_level=0
enable_nacl=false
remove_webcore_debug_symbols=true
android_default_version_name="71.0.3578.99"
android_default_version_code="357809950"
enable_resource_whitelist_generation=false
```

-----------------------------------------------------------------------------

## Previously considered

### Brave
System Webview: Unknown - should be possible in theory, but haven't tested yet.

Links:
* https://github.com/brave/browser-android-tabs

args.gn: TODO: Update
```
# Build arguments go here.
# See "gn args <out_dir> --list" for available build argumentS
target_os = "android"
target_cpu = "arm64"
is_debug = false

android_channel = "stable"
is_official_build = true
is_component_build = false
is_clang = true
symbol_level = 1
use_unofficial_version_number = false
android_default_version_code = "1"
android_default_version_name = "1.0.0"
v8_use_external_startup_data = true
fieldtrial_testing_like_official_build = true
icu_use_data_file = false
```


### Firefox
System Webview: Not yet, see https://wiki.mozilla.org/Mobile/GeckoView ("GeckoView serves a similar purpose to Android's built-in WebView, but it has its own APIs and is not a drop in replacement.")