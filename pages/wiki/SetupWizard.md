---
title: SetupWizard
---
The first thing a user sees on booting a device for the first time.
Also known as first run wizard, initial wizard, etc.

Source: https://gitlab.com/calyxos/platform_packages_apps_setupwizard

Forked from LineageOS

Things to consider
* Prompt to install apps from the local F-Droid repo. See [F-Droid#local-repo](../F‐Droid)
  * An issue with this would be that some apps may have an update right after install.
  * Another thing to do, set installer package name to F-Droid so that it can manage the app later.
* Prompt to enable microG. See [microG](../microG)
* Ask F-Droid to update the index while the setup process is going on.
