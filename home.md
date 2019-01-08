Pages:
* [AOSP 9.0 plan](AOSP-9.0-plan)
* [OTA Updates](OTA-Updates)
* [Signing](Signing)
* [Android One devices](android-one-devices)
* [Mi A2](mi-a2)
* [SetupWizard & F-Droid integration](SetupWizard-&-F-Droid-integration)
* [VMs](VMs)
* [Browser](Browser)
* [Automation](Automation)
* [Offline signing](Offline-signing)

TODOS - in no particular order - Obsolete, migrated to https://gitlab.com/calyxos/calyxos/issues
- [x] SetupWizard (fork + remove custom APIs)
- [ ] F-Droid Privileged Extension (make it trust system key)
- [ ] F-Droid Setupwizard (https://gitlab.com/fdroid/fdroidclient/issues/1546 and [SetupWizard & F-Droid integration](SetupWizard-&-F-Droid-integration))
- [x] Manage scripts (to be mostly done in January during the next security update, roughly based on AndroidHardening/script/manage.sh)
- [x] Improve release scripts (vendor/calyx/scripts/release.sh), add key generation / file collection script.
- [ ] Mi A2 booting signed build (for testing)
- [ ] Mi A2 bringup (so that it can actually be used)
- [ ] Browser and Webview (Chromium or maybe Brave) - see [Browser](Browser)
- [ ] Reconsider & update default app placement if needed
- [ ] Documentation (Changes from AOSP, Build & Installation steps, more as needed)
- [ ] F-Droid repo containing the prebundled apps
- [ ] 2FA for fingerprint
- [ ] Yubikey for device auth
- [ ] apk overlay (e.g. for etesync)
- [ ] Automated builds - see [Automation](Automation)
- [ ] CI (maybe gitlab ci?)
- [x] Incremental builds
- [ ] Virtual Machine usage (builds, signing, more) - see [VMs](VMs)
- [ ] Foreground-only permissions (like we had previously on the Copperhead fork, and also iOS - allow obtaining location only when active)
- [x] Signing builds offline - see [Offline signing](Offline-signing) for instructions
- [ ] Signing builds using a yubikey - see [Offline signing](Offline-signing)