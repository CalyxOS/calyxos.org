---
title: Building CalyxOS's Chromium fork
nav_title: Build Chromium
---

Chromium is the primary browser, and also responsible for providing WebView, a component used by many, many apps (more than you think!)

It has it's own build system and is built separately.

CalyxOS usually tracks the Chrome Android stable release, you can see the latest version at <https://omahaproxy.appspot.com/>.
Look for 'stable' under 'android' and 'webview' (usually the same)

Stable version at time of writing this: 91.0.4472.77

`export V=91.0.4472.77 # Replace this with the correct version`

## Short version
* This assumes you have a Chromium build environment already setup and have built it before

Steps:
1. Fetch the tag and create a new branch from it.
   * `git fetch --tags $V && git checkout -b calyxos-$V $V`
   * `gclient sync -D`
2. Fetch our patches and build configuration
   * `git clone https://gitlab.com/CalyxOS/chromium-patches -b android11-qpr1`
3. Apply patches (you version has to match the version in args.gn)
   * `git am chromium-patches/*.patch`
4. Setup build config
   * `gn args out/Default`
   * You want to fill out the args from `chromium-patches/args.gn` now.
   * You can also modify `target_cpu` if needed.
   * You also need to modify the `trichrome_certdigest` which the digest from a java keystore you have.
5. Build
   * `autoninja -C out/Default trichrome_chrome_64_32_apk trichrome_library_64_32_apk trichrome_webview_64_32_apk`
6. Output
   * `out/Default/apks/TrichromeLibrary6432.apk`
   * `out/Default/apks/TrichromeWebView6432.apk`
   * `out/Default/apks/TrichromeChrome6432.apk`
   * These will have to be signed, you can use `vendor/calyx/scripts/sign-trichrome.sh`
7. Done
   * You can now copy them to `prebuilts/calyx/chromium/arm64/` for usage in the OS build.