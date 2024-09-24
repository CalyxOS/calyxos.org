---
title: Building CalyxOS's Chromium fork
nav_title: Build Chromium
redirect_from:
   - /contribute/build/chromium/
   - /development/build/chromium/
---

Chromium is the primary browser, and also responsible for providing WebView, a component used by many, many apps (more than you think!)

It has it's own build system and is built separately.

CalyxOS usually tracks the Chrome Android stable release, you can see the latest version at <https://chromiumdash.appspot.com/releases?platform=Android>.
Look for the first version under 'Stable'

Stable version at time of writing this: 129.0.6668.54

`export V=129.0.6668.54 # Replace this with the correct version`

## Short version
* This assumes you have a Chromium build environment already setup and have built it before

Steps:
1. Fetch the tag and create a new branch from it.
   * `cd ~/chromium/src`
   * `git fetch origin refs/tags/$V:refs/tags/$V && git checkout -b calyxos-$V $V`
   * `gclient sync -D; gclient runhooks`
2. Fetch our patches and build configuration
   * `cd ~/chromium`
   * `git clone https://gitlab.com/CalyxOS/platform_external_calyx_chromium -b android14`
3. Apply patches (you version has to match the version in args.gn)
   * `cd ~/chromium/src`
   * `for i in $(cat ../platform_external_calyx_chromium/build/*_patches_list.txt); do git am ../platform_external_calyx_chromium/build/patches/$i; done`
4. Setup build config
   * `gn args out/Default`
   * You want to fill out the args from `~/chromium/src/args.gn` now.
   * You can also modify `target_cpu` if needed.
5. Build
   * **IMPORTANT**: We are working to resolve [build issues with Chromium 129](https://gitlab.com/CalyxOS/calyxos/-/issues/2715) that make it necessary to run autoninja multiple times before a successful build is achieved. We have updated the command below to do this, for now. Thanks for your patience.
   * `for i in $(seq 1 5); do autoninja -k 0 -C out/Default trichrome_chrome_64_32_bundle trichrome_library_64_32_apk trichrome_webview_64_32_apk system_webview_shell_apk && break; done`
6. Process output
   * `cd ~/chromium/src/out/Default/apks`
   * `java -jar ../../../third_party/android_build_tools/bundletool/cipd/bundletool.jar build-apks --mode universal --bundle TrichromeChrome6432.aab --output . --output-format DIRECTORY`
7. Done
   * You can now copy the APKs to `prebuilts/calyx/chromium/arm64/` for usage in the OS build.
